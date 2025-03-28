import maya.cmds as cmds

def create_joint(name, position, parent=None):
    cmds.select(clear=True)
    jnt = cmds.joint(name=name, position=position, radius=0.3)
    if parent:
        cmds.parent(jnt, parent)
    return jnt

def create_ik_handle(name, start_joint, end_joint, solver="ikRPsolver"):
    ik = cmds.ikHandle(name=name, sj=start_joint, ee=end_joint, solver=solver)[0]
    return ik

def create_control(name, position, radius=0.5):
    ctrl = cmds.circle(name=name, radius=radius, normal=(0, 1, 0))[0]
    cmds.xform(ctrl, worldSpace=True, translation=position)
    return ctrl

def create_pole_vector(name, ik_handle, knee_joint, offset=(0, 5, 0)):
    knee_pos = cmds.xform(knee_joint, query=True, worldSpace=True, translation=True)
    pv_pos = [knee_pos[0] + offset[0], knee_pos[1] + offset[1], knee_pos[2] + offset[2]]
    
    pv_ctrl = cmds.spaceLocator(name=name)[0]
    cmds.xform(pv_ctrl, worldSpace=True, translation=pv_pos)
    cmds.poleVectorConstraint(pv_ctrl, ik_handle)
    return pv_ctrl

def create_pivot_control(name, joint, parent):
    joint_pos = cmds.xform(joint, query=True, worldSpace=True, translation=True)
    pivot_ctrl = create_control(name, joint_pos, radius=0.3)
    cmds.parent(joint, pivot_ctrl)
    cmds.parent(pivot_ctrl, parent)
    return pivot_ctrl

def bind_skin(mesh, joints):
    if not cmds.objExists(mesh):
        print(f" Warning: Mesh '{mesh}' not found!")
        return
    cmds.select(clear=True)
    cmds.select([mesh] + joints)
    cmds.skinCluster(toSelectedBones=True, bindMethod=0, skinMethod=1, maximumInfluences=4, name="skinCluster")

def create_quadruped_skeleton():
    cmds.select(clear=True)

    master_ctrl = create_control("master_CTRL", (0, 0, 0), radius=3.0)
    
    spine_root = create_joint("spine_root_JNT", (0, 2.3, -2), parent=master_ctrl)
    spine_mid = create_joint("spine_mid_JNT", (0, 2.4, -0.5), spine_root)
    spine_top = create_joint("spine_top_JNT", (0, 2.4, 0.8), spine_mid)
    neck = create_joint("neck_JNT", (0, 3.2, 1.3), spine_top)
    head = create_joint("head_JNT", (0, 3.2, 2), neck)
    
    tail_01 = create_joint("tail_01_JNT", (0, 2.94, -2.28), spine_root)
    tail_02 = create_joint("tail_02_JNT", (0, 3.4, -2.33), tail_01)
    tail_03 = create_joint("tail_03_JNT", (0, 4.2, -2.36), tail_02)
    tail_04 = create_joint("tail_04_JNT", (0, 5, -2.36), tail_03)

    shoulder_L = create_joint("shoulder_L_JNT", (0.4, 1.9, 0.8), spine_top)
    elbow_L = create_joint("elbow_L_JNT", (0.3, 0.8, 0.6), shoulder_L)
    paw_L = create_joint("paw_L_JNT", (0.3, 0.2, 0.7), elbow_L)

    hip_L = create_joint("hip_L_JNT", (0.5, 1.8, -1.7), spine_root)
    knee_L = create_joint("knee_L_JNT", (0.4, 0.9, -1.7), hip_L)
    pawBack_L = create_joint("pawBack_L_JNT", (0.4, 0.2, -1.4), knee_L)

    shoulder_R = mirror_joint(shoulder_L, spine_top)
    elbow_R = mirror_joint(elbow_L, shoulder_R)
    paw_R = mirror_joint(paw_L, elbow_R)
    hip_R = mirror_joint(hip_L, spine_root)
    knee_R = mirror_joint(knee_L, hip_R)
    pawBack_R = mirror_joint(pawBack_L, knee_R)

    leg_L_ik = create_ik_handle("leg_L_IK", hip_L, pawBack_L)
    leg_R_ik = create_ik_handle("leg_R_IK", hip_R, pawBack_R)
    arm_L_ik = create_ik_handle("arm_L_IK", shoulder_L, paw_L)
    arm_R_ik = create_ik_handle("arm_R_IK", shoulder_R, paw_R)

    pv_leg_L = create_pole_vector("pv_leg_L_CTRL", leg_L_ik, knee_L, (0, 5, -2))
    pv_leg_R = create_pole_vector("pv_leg_R_CTRL", leg_R_ik, knee_R, (0, 5, -2))
    pv_arm_L = create_pole_vector("pv_arm_L_CTRL", arm_L_ik, elbow_L, (0, 5, -5))
    pv_arm_R = create_pole_vector("pv_arm_R_CTRL", arm_R_ik, elbow_R, (0, 5, -5))

    foot_L_ctrl = create_control("foot_L_CTRL", cmds.xform(pawBack_L, query=True, worldSpace=True, translation=True))
    foot_R_ctrl = create_control("foot_R_CTRL", cmds.xform(pawBack_R, query=True, worldSpace=True, translation=True))
    hand_L_ctrl = create_control("hand_L_CTRL", cmds.xform(paw_L, query=True, worldSpace=True, translation=True))
    hand_R_ctrl = create_control("hand_R_CTRL", cmds.xform(paw_R, query=True, worldSpace=True, translation=True))

    knee_pivot_L = create_pivot_control("knee_pivot_L_CTRL", knee_L, hip_L)
    knee_pivot_R = create_pivot_control("knee_pivot_R_CTRL", knee_R, hip_R)
    elbow_pivot_L = create_pivot_control("elbow_pivot_L_CTRL", elbow_L, shoulder_L)
    elbow_pivot_R = create_pivot_control("elbow_pivot_R_CTRL", elbow_R, shoulder_R)

    cmds.parent(leg_L_ik, foot_L_ctrl)
    cmds.parent(leg_R_ik, foot_R_ctrl)
    cmds.parent(arm_L_ik, hand_L_ctrl)
    cmds.parent(arm_R_ik, hand_R_ctrl)
    
    cmds.parent(pv_leg_L, pv_leg_R, pv_arm_L, pv_arm_R, foot_L_ctrl, foot_R_ctrl, hand_L_ctrl, hand_R_ctrl, master_ctrl)

    all_joints = [spine_root, spine_mid, spine_top, neck, head,
                  shoulder_L, elbow_L, paw_L, hip_L, knee_L, pawBack_L,
                  shoulder_R, elbow_R, paw_R, hip_R, knee_R, pawBack_R, 
                  tail_01, tail_02, tail_03, tail_04]

    bind_skin("Cat", all_joints)
    print("Quadruped rig complete! Master control added! ")

def mirror_joint(source, parent):
    pos = cmds.xform(source, query=True, worldSpace=True, translation=True)
    mirrored_name = source.replace("_L_", "_R_")
    mirrored_pos = (-pos[0], pos[1], pos[2])
    return create_joint(mirrored_name, mirrored_pos, parent)

create_quadruped_skeleton()
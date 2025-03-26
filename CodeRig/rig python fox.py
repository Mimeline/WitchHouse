import maya.cmds as cmds

def create_joint(name, position, parent=None):
    """Creates a joint with a radius of 0.5 and parents it if needed."""
    cmds.select(clear=True)
    jnt = cmds.joint(name=name, position=position, radius=0.5)
    if parent:
        cmds.parent(jnt, parent)
    return jnt

def create_quadruped_skeleton():
    """Creates a basic quadruped skeleton with automatic mirroring and correct hierarchy, including a tail."""

    cmds.select(clear=True)

    # Spine (no mirroring needed)
    spine_root = create_joint("spine_root_JNT", (0, 3.7, -0.8))
    spine_mid = create_joint("spine_mid_JNT", (0, 3.4, 0.4), spine_root)
    spine_top = create_joint("spine_top_JNT", (0, 3.4, 1.6), spine_mid)
    neck = create_joint("neck_JNT", (0, 4, 2.4), spine_top)
    head = create_joint("head_JNT", (0, 4, 3.2), neck)

    # Tail
    tail_01 = create_joint("tail_01_JNT", (0, 3.9, -2.1), spine_root)
    tail_02 = create_joint("tail_02_JNT", (0, 4.3, -2.8), tail_01)
    tail_03 = create_joint("tail_03_JNT", (0, 5.1, -3.3), tail_02)
    tail_04 = create_joint("tail_04_JNT", (0, 2.6, -2.3), tail_03)


    # Front legs (left side)
    shoulder_L = create_joint("shoulder_L_JNT", (0.7, 2.9, 1.5), spine_top)
    elbow_L = create_joint("elbow_L_JNT", (0.8, 1.3, 1.3), shoulder_L)
    paw_L = create_joint("paw_L_JNT", (0.8, 0.3, 1.5), elbow_L)

    # Back legs (left side)
    hip_L = create_joint("hip_L_JNT", (1, 3, -1.1), spine_root)
    knee_L = create_joint("knee_L_JNT", (0.7, 1.5, -1.3), hip_L)
    pawBack_L = create_joint("pawBack_L_JNT", (0.7, 0.3, -1.4), knee_L)

    # Mirroring for the right side with proper parenting
    shoulder_R = mirror_joint(shoulder_L, "spine_top_JNT")
    elbow_R = mirror_joint(elbow_L, shoulder_R)
    paw_R = mirror_joint(paw_L, elbow_R)

    hip_R = mirror_joint(hip_L, "spine_root_JNT")
    knee_R = mirror_joint(knee_L, hip_R)
    pawBack_R = mirror_joint(pawBack_L, knee_R)

    print("Quadruped skeleton with tail created successfully!")

def mirror_joint(source, parent):
    """Creates a mirrored joint for the right side (_R) with proper parenting."""
    pos = cmds.xform(source, query=True, worldSpace=True, translation=True)
    mirrored_name = source.replace("_L_", "_R_")  # Change _L_ to _R_
    mirrored_pos = (-pos[0], pos[1], pos[2])  # Mirror along X-axis
    return create_joint(mirrored_name, mirrored_pos, parent)  # Create with correct parent

# Run the skeleton creation
create_quadruped_skeleton()
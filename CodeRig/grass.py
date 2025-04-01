import maya.cmds as cmds

# Création d'herbes irrégulières

from random import *
cmds.polyPlane(name="sol")
cmds.scale(15,0,15)
coef = 50
nbv = len(cmds.ls('herbe.vtx[*]',flatten=True))
cmds.delete("sol", ch=True)
for i in range(1,121):
    v = random()
    if v<coef:
        cmds.select('herbe')
        cmds.select(cmds.duplicate('herbe'))
        cmds.move(random()*1000/coef,random()/coef,random()*1000/coef, r=True)

# Placement random de l'herbe
from random import *
coef = 8
nbv = len(cmds.ls('sol.vtx[*]',flatten=True))
for i in range(nbv):
    v = random()
    if v<coef:
        p = cmds.xform('sol.vtx['+str(i)+']', q=True,t=True)
        print(p)
        cmds.move(p[0],p[1],p[2])
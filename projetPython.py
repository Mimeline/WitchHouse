import maya.cmds as cmds
import maya.mel
import random
import CodeGui
import CodeRig 


def generate_pumpkins(nb_pumpkins, min_scale, max_scale, rotation):
    coef = 0.3
    plane_size = 50


    # Définis le dossier où sont stockés les modèles
    MODE_FOLDER = "Modelisation\Assets décoratifs"  # Remplace par ton chemin
    
    # Liste tous les fichiers dans le dossier
    model_files = [f for f in os.listdir(MODE_FOLDER) if f.endswith(('Citrouille.mb'))]
    for model in model_files:
        model_path = os.path.join(MODE_FOLDER, model)
        
        # Importer le fichier dans la scène Maya
        cmds.file(model_path, i=True, ignoreVersion=True, mergeNamespacesOnClash=False, namespace="imported")
    
        # Récupérer le dernier objet importé
        imported_objects = cmds.ls(selection=True)
        
        if imported_objects:
            # Déplacer le modèle sur X pour qu'ils ne se superposent pas
            cmds.move(x_offset, 0, 0, imported_objects, relative=True)
            x_offset += 10  # Augmenter l'offset pour le prochain modèle
            
    cmds.delete('pPlane1', ch=True) 
    random_scaleX = min_scale + (random.random()* max_scale)
    random_scaleY = min_scale + (random.random()* max_scale)
    nbv = len(cmds.ls('pPlane1.vtx[*]',flatten=True))
    for i in range(nbv):
        v = random.random()
        if v<coef:
            p = cmds.xform('pPlane1.f['+str(i)+']', q=True,t=True, ws=True)
            p2 = cmds.xform('pPlane1.f['+str(i)+']', q=True,t=True, r = True)
            cmds.select(cmds.duplicate('caillou'))
            cmds.scale(plane_size,0,plane_size)
            cmds.move(p[0] - 3,p[1] ,p[2])                   

def generate_forest(nb_cailloux, min_scale, max_scale, rotation):
    plane_size = 50
    #Executez le code suivant sur Arbre.mb afin de faire revenir le printemps 
    cmds.polySphere(n = 'caillou', r = 0.2)
    #cmds.scale(0.2,0.2,0.2)    
    cmds.polyPlane()
    cmds.scale(plane_size,0,plane_size)
    nbv = len(cmds.ls('caillou.vtx[*]',flatten=True))
    
    # Selection de vertices dans un boucle
    """for i in range(nbv):
        cmds.select('pSphere1.vtx['+str(i)+']')
        cmds.move(0.000001,0,0, r=True)"""
    # Connaitre le nombre de vertices d'un objet
    # avec la fonction len
    
    
    # Déformation de la sphère
    coef = 20
    nbv = len(cmds.ls('caillou.vtx[*]',flatten=True))
    for i in range(nbv):
        if(i % 2 == 0):
            cmds.select('caillou.vtx['+str(i)+']')
            p1 = [random.random()/coef,random.random()/coef,random.random()/coef]
            print(p1)
            cmds.move(p1[0],0,0, r=True)
            
    
    
    #deformation du sol 
    coef = 50
    nbv = len(cmds.ls('pPlane1.vtx[*]',flatten=True))
    for i in range(nbv):
        cmds.select('pPlane1.vtx['+str(i)+']')
        p1 = [random.random()/coef,random.random()/coef,random.random()/coef]
        print(p1)
        cmds.move(0,(random.random()/3) , 0 , r=True)
    
    # Placement d'objets sur un objet
    coef = 0.3
    
    cmds.delete('pPlane1', ch=True) 
    random_scaleX = min_scale + (random.random()* max_scale)
    random_scaleY = min_scale + (random.random()* max_scale  )
    for i in range(nbv):
        v = random.random()
        if v<coef:
            p = cmds.xform('pPlane1.f['+str(i)+']', q=True,t=True, ws=True)
            p2 = cmds.xform('pPlane1.f['+str(i)+']', q=True,t=True, r = True)
            cmds.select(cmds.duplicate('caillou'))
            cmds.move(p[0] - 3,p[1] ,p[2])   
                    
    #creation du feuillage    
    cmds.polySphere(n = 'feuille', r = 0.2)
    cmds.scale(0.5,0.09,2)
    
    coef = 0.3
    
    
    
    for i in range(nbv):
        for k in range(4,7):
            v = random.random()
            if v<coef:
                p = cmds.xform('branche' + str(k) + '.f['+str(i)+']', q=True,t=True, ws=True)
                p2 = cmds.xform('branche' + str(k) + '.f['+str(i)+']', q=True,t=True, r = True)
                cmds.select(cmds.duplicate('feuille'))
                cmds.move(p[0],p[1] ,p[2])   
                print(random.random())
                cmds.rotate( random.random() * 1000, random.random() * 1000, random.random() * 1000)
    

def generate_animals():
    print("animeaux générés")
    # Définis le dossier où sont stockés les modèles
    MODE_FOLDER = "Modelisation"  # Remplace par ton chemin
    
    # Liste tous les fichiers dans le dossier
    model_files = [f for f in os.listdir(MODE_FOLDER) if f.endswith(('.mb'))]
    for model in model_files:
        model_path = os.path.join(MODE_FOLDER, model)
        
        # Importer le fichier dans la scène Maya
        cmds.file(model_path, i=True, ignoreVersion=True, mergeNamespacesOnClash=False, namespace="imported")
    
        # Récupérer le dernier objet importé
        imported_objects = cmds.ls(selection=True)
        
        if imported_objects:
            # Déplacer le modèle sur X pour qu'ils ne se superposent pas
            cmds.move(x_offset, 0, 0, imported_objects, relative=True)
            x_offset += 10  # Augmenter l'offset pour le prochain modèle

    
def get_vertex_positions(obj_name):
    vertices = cmds.ls(f"{obj_name}.vtx[*]", flatten=True)  # Liste des vertex
    positions = [cmds.pointPosition(vtx, world=True) for vtx in vertices]  # Coordonnées en espace monde
    return positions


new_texture_path = ""
myTextures = dict()
myTextureName = "my_imported_texture"
nbImportedTexture = 0
lightInitialPos = 0
def get_new_texture():
    new_texture_path = cmds.fileDialog2(startingDirectory ="/usr/u/bozo/myFiles/")
    return new_texture_path
    
def save_new_texture(): 
    new_texture_path = get_new_texture()
    newKey = myTextureName + str(nbImportedTexture)
    myTextures[newKey] = new_texture_path
    cmds.iconTextButton( style='iconAndTextVertical', image1='tuilebleu.png', label='Texture personnalisé', command='modifyTexture(new_texture_path)', parent="dynamicLayout" )

    print(myTextures)
    
def get_maya_main_window():
    """Renvoit la fenetre principale de Maya."""
    return maya.mel.eval('$tmpVar=$gMainWindow') 
    
def dropdownSelectHousepart():
    selected_val = cmds.optionMenu("SelectionDropdownHousepart", query=True, value=True) 
    return selected_val   
    
### SCALING ###
"""
def sliderScaleX( selectedGeo ):
    cmds.select( selectedGeo )
    Largeur = cmds.floatSliderGrp(slider_Longueur, q=True,v=True)
    cmds.scale(Largeur, 1, 1)
    print(Largeur)
    
def sliderScaleY( selectedGeo ):
    cmds.select( selectedGeo )
    Hauteur = cmds.floatSliderGrp(slider_Hauteur, query=True, value=True)
    cmds.scale(1, Hauteur, 1)
    print(Hauteur)
    
def sliderScaleZ( selectedGeo ):
    cmds.select( selectedGeo )
    Longueur = cmds.floatSliderGrp(slider_Largeur, q=True,v=True)
    cmds.scale(1, 1, Longueur)
    print(Longueur)
"""    
def scaleXYZ(selectedGeo, x_scale, y_scale, z_scale):
    print("scaling")
    cmds.select( selectedGeo )
    """
    Hauteur = cmds.floatSliderGrp(slider_Hauteur, query=True, value=True)
    Longueur = cmds.floatSliderGrp(slider_Largeur, q=True,v=True)
    Largeur = cmds.floatSliderGrp(slider_Longueur, q=True,v=True)
    """
    
    cmds.scale(x_scale, y_scale, z_scale)
    

def moveLight():
    cmds.select('directionalLight1')
    heure = cmds.floatSliderGrp(slider_Lumiere, query=True, value=True)
    cmds.rotate(0,heure, 0)
    print(heure)
    

    

### MODIFY TEXTURE ###
def get_texture_path(relative_texture_path):
    """
    Retourne le chemin absolu du fichier de texture basé sur le chemin du script Python.

    :param relative_texture_path: Chemin relatif du fichier de texture (par ex. "textures/my_texture.jpg")
    :return: Chemin absolu du fichier de texture
    """
    # Récupère le chemin du script Python en cours d'exécution
    scene_path = cmds.file(query=True, sceneName=True)
    scene_directory = os.path.dirname(scene_path)
    
    # Construit le chemin absolu
    absolute_texture_path = os.path.normpath(os.path.join(scene_directory, relative_texture_path))
    
    # Vérifie si le fichier existe
    if not os.path.exists(absolute_texture_path):
        raise FileNotFoundError(f"Le fichier de texture n'existe pas : {absolute_texture_path}")
    
    return absolute_texture_path


# Chemins des textures
pathwood1 = get_texture_path("textures/wood1.png")
pathwood2 = get_texture_path("textures/wood2.jpg")
pathbrick1 = get_texture_path("textures/brick1.png")
pathbrick2 = get_texture_path("textures/brick2.png")
pathroof1 = get_texture_path("textures/tiles1.png")
pathroof2 = get_texture_path("textures/tiles2.png")        

def modifyTexture(textureParam):
    # Types de shaders
    shaderTypes = ["lambert"]

    # Types de textures
    textureTypes = ["file"]

    # Variables pour positionnement

    indice = 1
    
    selectionMaison = dropdownSelectHousepart()

    for shader in shaderTypes:
        for texture in textureTypes:
            # Création d'un matériau
            shader_name = f"{shader}_mat{indice}"
            shader_node = cmds.shadingNode(shader, asShader=True, name=shader_name)

            # Création du Shading Group
            shading_group_name = f"{shader}_SG{indice}"
            shading_group = cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name=shading_group_name)
            cmds.connectAttr(f"{shader_node}.outColor", f"{shading_group}.surfaceShader")

            # Création d'un nœud de fichier pour la texture
            file_node = cmds.shadingNode("file", asTexture=True, isColorManaged=True, name=f"{texture}_tex{indice}")
            cmds.setAttr(f"{file_node}.fileTextureName", textureParam, type="string")

            # Création d'un nœud de placement de texture
            place2d_name = f"place2dTexture{indice}"
            place2d_node = cmds.shadingNode("place2dTexture", asUtility=True, name=place2d_name)

            # Connexion entre place2dTexture et file
            cmds.connectAttr(f"{place2d_node}.outUV", f"{file_node}.uv", force=True)
            cmds.connectAttr(f"{place2d_node}.outUvFilterSize", f"{file_node}.uvFilterSize", force=True)

            # Connexion entre la texture et le matériau
            cmds.connectAttr(f"{file_node}.outColor", f"{shader_node}.color", force=True)

            # Affectation du matériau à l'objet "toit"
            cmds.sets(selectionMaison, edit=True, forceElement=shading_group)
        
            # Mise à jour des positions pour d'autres objets

            indice += 1


create_witch_house_ui()
#generate_forest()      
#generate_animals()  
print(get_vertex_positions("sol"))
        
#INTERFACE
sX = 1
sY = 1 
sZ = 1
lightCreated = False 
cmds.window(title='Modification des dimensions de la maison')
custom_menu = cmds.menu("customMenu", label="Menu Personnalisé", parent="MayaWindow")
cmds.menuItem(label="Option 1", parent=custom_menu)
cmds.menuItem(label="Option 2", parent=custom_menu)


main_layout = cmds.columnLayout(adjustableColumn=True)
cmds.rowLayout(numberOfColumns=2)
cmds.button(label='Sauvegarder',command=('cmds.fileDialog2(startingDirectory ="/usr/u/bozo/myFiles/", fileFilter="Maya Ascii (.ma)")') )
cmds.button(label='Importer des textures',command=('save_new_texture()') )
cmds.setParent("..")

cmds.columnLayout()

# Créer un dropdown menu
cmds.text(label="Selectionnez une partie de la maison :")

cmds.optionMenu("SelectionDropdownHousepart", label="Choisir une option :")
cmds.menuItem(label="base")
cmds.menuItem(label="toit")
cmds.menuItem(label="porte")
cmds.menuItem(label="fenetres")
cmds.menuItem(label="sol")
cmds.menuItem(label="escalier")
cmds.menuItem(label="poutres_murs")

"""
slider_Longueur = cmds.floatSliderGrp(label='Longueur',min=1,max=50, field=True)
slider_Hauteur = cmds.floatSliderGrp(label='Hauteur',min=1,max=50, field=True)
slider_Largeur = cmds.floatSliderGrp(label='Largeur',min=1,max=50, field=True)
"""

cmds.button(label="Re-scale", command='scaleXYZ("geo")')
cmds.setParent("..")
cmds.showWindow()

windowlight = cmds.window('Modification de la lumière')
cmds.columnLayout( "dynamicLayout", adjustableColumn=True )

slider_Lumiere = cmds.floatSliderGrp(label='Lumiere',min=-100,max=100, field=True)
cmds.button(label="set time", command='moveLight()')


# Create a directional light
light = cmds.directionalLight(rotation=(45, 30, 15))

# Change the light intensity
cmds.directionalLight( light, e=True, intensity=0.9 )

# Query it
cmds.directionalLight( light, q=True, intensity=True )
# Result:0.5#

cmds.move(-14,0,0)
cmds.rotate(-117,0,0)
cmds.showWindow()
if(cmds.objExists('directionalLight1')):
    cmds.move(2, 2, -4, "directionalLight1.rotatePivot", absolute=True)

#INTERFACE MODIFICATION DES TEXTURES

window = cmds.window('Modification des textures de la maison')
cmds.columnLayout( "dynamicLayout", adjustableColumn=True )
cmds.iconTextButton( style='iconAndTextVertical', image1='woodbutton.png', label='Bois 1', command='modifyTexture(pathwood1)' )
cmds.iconTextButton( style='iconAndTextVertical', image1='woodbutton2.jpg', label='Bois 2', command='modifyTexture(pathwood2)' )
cmds.iconTextButton( style='iconAndTextVertical', image1='Brick_wall.png', label='Brique 1', command='modifyTexture(pathbrick1)' )
cmds.iconTextButton( style='iconAndTextVertical', image1='brick_grass.png', label='Brique 2', command='modifyTexture(pathbrick2)' )
cmds.iconTextButton( style='iconAndTextVertical', image1='tuilerouge.png', label='Tuiles 1', command='modifyTexture(pathroof1)' )
cmds.iconTextButton( style='iconAndTextVertical', image1='tuilebleu.png', label='Tuiles 2', command='modifyTexture(pathroof2)' )


cmds.showWindow( window )

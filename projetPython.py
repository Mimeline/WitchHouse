import maya.cmds as cmds
import maya.mel


new_texture_path = ""
myTextures = dict()
myTextureName = "my_imported_texture"
nbImportedTexture = 0
truncated_path = ""
def get_new_texture():
    new_texture_path = cmds.fileDialog2(startingDirectory ="/usr/u/bozo/myFiles/")
    return new_texture_path
    
def save_new_texture(): 
    new_texture_path = get_new_texture()
    truncated_path =  str(new_texture_path[0].replace('/','\\'))
    newKey = myTextureName + str(nbImportedTexture)
    #myTextures[newKey] = truncated_path
    print(truncated_path)
    cmds.iconTextButton( style='iconAndTextVertical', image1='tuilebleu.png', label='Texture personnalisé', command='modifyTexture(truncated_path)', parent="dynamicLayout" )

    
    
def get_maya_main_window():
    """Renvoit la fenetre principale de Maya."""
    return maya.mel.eval('$tmpVar=$gMainWindow') 
    
def dropdownSelectHousepart():
    selected_val = cmds.optionMenu("SelectionDropdownHousepart", query=True, value=True) 
    return selected_val   
    
### SCALING ###
def sliderScaleX( ):
    cmds.select( 'geo' )
    Largeur = cmds.floatSliderGrp(slider_Longueur, q=True,v=True)
    cmds.scale(Largeur, 1, 1)
    print(Largeur)
    
def sliderScaleY( ):
    cmds.select( 'geo' )
    Hauteur = cmds.floatSliderGrp(slider_Hauteur, query=True, value=True)
    cmds.scale(1, Hauteur, 1)
    print(Hauteur)
    
def sliderScaleZ( ):
    cmds.select( 'geo' )
    Longueur = cmds.floatSliderGrp(slider_Largeur, q=True,v=True)
    cmds.scale(1, 1, Longueur)
    print(Longueur)
    
def scaleXYZ():
    cmds.select( 'geo' )
    Hauteur = cmds.floatSliderGrp(slider_Hauteur, query=True, value=True)
    Longueur = cmds.floatSliderGrp(slider_Largeur, q=True,v=True)
    Largeur = cmds.floatSliderGrp(slider_Longueur, q=True,v=True)
    cmds.scale(Largeur, Hauteur, Longueur)
    


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
    print("chemin de la texture" + textureParam)
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



        
        
#INTERFACE
sX = 1
sY = 1 
sZ = 1
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

slider_Longueur = cmds.floatSliderGrp(label='Longueur',min=1,max=50, field=True)
slider_Hauteur = cmds.floatSliderGrp(label='Hauteur',min=1,max=50, field=True)
slider_Largeur = cmds.floatSliderGrp(label='Largeur',min=1,max=50, field=True)

cmds.button(label="Re-scale", command='scaleXYZ()')
cmds.setParent("..")
cmds.showWindow()

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

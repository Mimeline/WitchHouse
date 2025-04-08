import maya.cmds 
import sys
import os
# Ajouter le chemin du dossier racine du projet à sys.path
current_directory = os.getcwd()  # Obtenir le répertoire courant
sys.path.append(current_directory)  # Ajouter la racine du projet à sys.path

import CodeGui 
import projetPythonFonctions


create_witch_house_ui()


import maya.cmds as cmds
import projetPythonFonctions

forestSliders = dict()
sliders = dict()
assetsSliders = dict()
animalSliders = dict()

def create_witch_house_ui():
    global shape_radio_collection, round_btn, square_btn
    if cmds.window("witchHouseWindow", exists=True):
        cmds.deleteUI("witchHouseWindow")
    
    window = cmds.window("witchHouseWindow", title="Witch house v.2", widthHeight=(400, 900))
    main_layout = cmds.columnLayout(adjustableColumn=True)
    
    # Add image placeholder for project preview
    cmds.text(label="Project preview img HERE", height=150, align="center", backgroundColor=(1, 0.8, 0.8))
    
    # Create tabs
    tabs = cmds.tabLayout(innerMarginWidth=5, innerMarginHeight=5, width=400)
    
    # Tab 1: Forest
    forest_layout = cmds.columnLayout(adjustableColumn=True, rowSpacing=10)
    cmds.text(label="Generate the field of your:", align='left', height = 40)
    
    
    forestSliders["ground"] = {
        "Size": cmds.floatSliderGrp(label="Size", field=True, minValue=0, maxValue=100, value=50, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        "Subdivid": cmds.floatSliderGrp(label="Subdivid", field=True, minValue=0, maxValue=10, value=5, columnWidth=[(1, 120), (2, 50), (3, 200)]),
    }
    
    cmds.radioCollection()
    cmds.rowColumnLayout(numberOfColumns=4, columnWidth=[(1,170),(2,3),(3,100),(4,100)])
    cmds.text(label='Shape:', align='right')
    cmds.text(label='')
    shape_radio_collection = cmds.radioCollection()
    round_btn = cmds.radioButton('round_btn',label='Round')
    square_btn = cmds.radioButton('square_btn',label='Square')
    cmds.setParent("..")
    cmds.rowColumnLayout(numberOfColumns=3, columnWidth=[(1,150),(2,100),(3,150)])  
    cmds.text(label='')
    cmds.button(label="Field", w=100,command='generate_ground()')
    cmds.text(label='')
    cmds.setParent("..")

    cmds.separator(height=10, style='double')
    cmds.text(label="Place some rocks:", align='left')
    cmds.floatSliderGrp(label="Amount", field=True, minValue=0, maxValue=100, value=50, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Min scale", field=True, minValue=0, maxValue=10, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Max scale", field=True, minValue=0, maxValue=10, value=5, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Rotation", field=True, minValue=0, maxValue=360, value=45, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.rowLayout(numberOfColumns=1, columnAlign=(1, "center"))
    cmds.setParent("..")
    cmds.rowColumnLayout(numberOfColumns=3, columnWidth=[(1,150),(2,100),(3,150)])  
    cmds.text(label='')
    cmds.button(label="Rocks", w=100, command='generate_forest(10,1,2,0)')
    cmds.text(label='')
    cmds.setParent("..")
    
    cmds.separator(height=10, style='double')
    cmds.text(label="Place some grass:", align='left')
    cmds.floatSliderGrp(label="Amount", field=True, minValue=0, maxValue=100, value=50, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Min scale", field=True, minValue=0, maxValue=10, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Max scale", field=True, minValue=0, maxValue=10, value=5, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Rotation", field=True, minValue=0, maxValue=360, value=45, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.rowLayout(numberOfColumns=1, columnAlign=(1, "center"))
    cmds.setParent("..")
    cmds.rowColumnLayout(numberOfColumns=3, columnWidth=[(1,150),(2,100),(3,150)])  
    cmds.text(label='')
    cmds.button(label="Grass", w=100)
    cmds.text(label='')
    cmds.setParent("..")
    
    cmds.separator(height=10, style='double')
    cmds.text(label="MaririEmimiVanessaEloé - 2025", align="center")
    cmds.setParent("..")  # Exit forest_layout
    
    # Tab 2: House
    house_layout = cmds.scrollLayout(verticalScrollBarThickness=16, horizontalScrollBarThickness=0)
    house_column = cmds.columnLayout(adjustableColumn=True, rowSpacing=10)
    cmds.text(label="Generate your house.", align='left', height = 40)
    cmds.text(label="Modify the size of base:")
    cmds.floatSliderGrp(label="Length", field=True, minValue=-10, maxValue=10, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Height", field=True, minValue=-10, maxValue=10, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.floatSliderGrp(label="Width", field=True, minValue=-10, maxValue=10, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.separator(height=10, style='double')
    
    sections = ["toit", "porte", "fenetres", "sol", "escalier", "poutres_murs"]
    for section in sections:
        cmds.text(label=f"Modify the size of {section}:")
        sliders[section] = {
        "length": cmds.floatSliderGrp(label="Length", field=True, minValue=-10, maxValue=10, value=1),
        "height": cmds.floatSliderGrp(label="Height", field=True, minValue=-10, maxValue=10, value=1),
        "width": cmds.floatSliderGrp(label="Width", field=True, minValue=-10, maxValue=10, value=1)
        }
        cmds.separator(height=10, style='double')

    cmds.rowColumnLayout(nc=2, cw=[(1,250),(2,150)])
    cmds.button(
        label='Generate House', command='generate_house()')
    cmds.button(label = 'Reset')
    cmds.setParent("..")
    
    cmds.text(label="MaririEmimiVanessaEloé - 2025", align="center")
    cmds.setParent("..")  # Exit house_column
    cmds.setParent("..")  # Exit house_layout
    
    # Tab 3: Props
    props_layout = cmds.columnLayout(adjustableColumn=True, rowSpacing=10)
    items = [("Want some pumpkins?", "🎃", "citrouille"), ("Do you need broomsticks?", "🧹", "balai"), ("Some haunted ghost?", "👻", "fantome")]
    for label, emoji, item_name in items:
        cmds.text(label=label, align='left')   
        assetsSliders[item_name] = {
        "amount": cmds.floatSliderGrp(label="Amount", field=True, minValue=1, maxValue=100, value=50, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        "minScale": cmds.floatSliderGrp(label="Min scale", field=True, minValue=1, maxValue=5, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        "maxScale": cmds.floatSliderGrp(label="Max scale", field=True, minValue=1, maxValue=5, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        "rotation": cmds.floatSliderGrp(label="Rotation", field=True, minValue=1, maxValue=360, value=45, columnWidth=[(1, 120), (2, 50), (3, 200)])
        }
        
        cmds.rowLayout(numberOfColumns=1, columnAlign=(1, "center"))
        cmds.setParent("..")
        cmds.rowColumnLayout(numberOfColumns=3, columnWidth=[(1,150),(2,100),(3,150)])  
        cmds.text(label='')
        cmds.button(label=emoji, w=100, command=f'generate_object("{item_name}", 10, 1, 2, 0)')
        cmds.text(label='')
        cmds.setParent("..")
        cmds.separator(height=10, style='double')
    cmds.text(label="MaririEmimiVanessaEloé - 2025", align="center")
    cmds.setParent("..")  # Exit props_layout
    
    # Tab 4: Animals
    animals_layout = cmds.columnLayout(adjustableColumn=True, rowSpacing=10)
    items = [("generate a bear?", "🐻", "Bear"), ("Mew-mew?", "🐱", "chat"), ("generate a bunny?", "🐰", "Bunny"), ("generate a fox?", "🦊", "Fox")]
    for label, emoji, item_name in items:
        cmds.text(label=label, align='left')
        animalSliders[item_name] = {
        "amount": cmds.floatSliderGrp(label="Amount", field=True, minValue=1, maxValue=100, value=50, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        "minScale": cmds.floatSliderGrp(label="Min scale", field=True, minValue=1, maxValue=5, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        "maxScale": cmds.floatSliderGrp(label="Max scale", field=True, minValue=1, maxValue=5, value=1, columnWidth=[(1, 120), (2, 50), (3, 200)]),
        }
        
        cmds.rowLayout(numberOfColumns=1, columnAlign=(1, "center"))
        cmds.setParent("..")
        cmds.rowColumnLayout(numberOfColumns=3, columnWidth=[(1,150),(2,100),(3,150)])  
        cmds.text(label='')
        cmds.button(label=emoji, w=100,command=f'generate_animal("{item_name}", 10, 1, 2, 0)')
        cmds.text(label='')
        cmds.setParent("..")
        cmds.separator(height=10, style='double')
    cmds.text(label="MaririEmimiVanessaEloé - 2025", align="center")
    cmds.setParent("..")  # Exit animals_layout
    
    # Tab 5: Animation
    animation_layout = cmds.columnLayout(adjustableColumn=True, rowSpacing=10)
    cmds.text(label="Animate your dog?")
    cmds.floatSliderGrp(label="Duration", field=True, minValue=0, maxValue=100, value=50, columnWidth=[(1, 120), (2, 50), (3, 200)])
    cmds.rowLayout(numberOfColumns=1, columnAlign=(1, "center"))
    cmds.setParent("..")
    cmds.rowColumnLayout(numberOfColumns=3, columnWidth=[(1,150),(2,100),(3,150)])  
    cmds.text(label='')
    cmds.button(label="🐕", w=100)
    cmds.text(label='')
    cmds.setParent("..")
    cmds.separator(height=10, style='double')
    cmds.text(label="Etc......")
    cmds.text(label="MaririEmimiVanessaEloé - 2025", align="center")
    cmds.setParent("..")  # Exit animation_layout
    
    # Add tabs
    cmds.tabLayout(tabs, edit=True, tabLabel=[
        (forest_layout, "Forest"),
        (house_layout, "House"),
        (props_layout, "Props"),
        (animals_layout, "Animals"),
        (animation_layout, "Animation")
    ])
    
    cmds.showWindow(window)

# Run the UI
create_witch_house_ui()

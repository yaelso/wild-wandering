from pyrule_compendium import compendium

comp = compendium()

def get_numbered_entry(number):
    return print(comp.get_entry(number))

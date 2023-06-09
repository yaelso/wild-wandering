from pyrule_compendium import compendium

comp = compendium()

def get_random_entry(number):
    return print(comp.get_entry(number))

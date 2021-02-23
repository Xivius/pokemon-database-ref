from Move import *
from Type import *
from Pokedex import *

class Pokedex: #holds all the stats for each pokemon
    def __init__(self, name = None):
        if name:
            self.id = None
            self.name = None
            self.type1 = None
            self.type2 = None
    
    def setPokedex(self, id = None, name = None,
                    type1 = None, type2 = None):
        if name:
            self.id = id
            self.name = name
            self.type1 = type1
            self.type2 = type2
        else:
            print('Empty Pokemon Name!')
    
    def display():
        print("""
        id = %s\n
        name = %s\n
        type1 = %s\n
        type2 = %s
        """ % self.id, self.name, 
            self.type1, self.type2)

class Type:
    def __init__(self):
        self.name = None
        self.superEffective = None
        self.notEffective = None
        self.noEffect = None
    
    def setType(self, name = None, superEffective = None,
                notEffective = None, noEffect = None):
        if name:
            self.name = name
            self.superEffective = superEffective
            self.notEffective = notEffective
            self.noEffect = noEffect
        else:
            print('Empty Type Name!')
	
    def display():
        print("""
        name = %s\n
        superEffective = %s\n
        notEffective = %s\n
        noEffect = %s
        """ % self.name, self.superEffective, 
            self.notEffective, self.noEffect)

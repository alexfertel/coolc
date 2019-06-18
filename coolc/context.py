class Context:
    def __init__(self):
        self.fmap = {}
        self.lmap = {}

    def add_func(self, fname, offset):
        self.fmap[fname] = offset

    def add_localvar(self, lname, offset):
        self.lmap[lname] = offset

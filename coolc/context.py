class Context:
    def __init__(self):
        self.fmap = {}
        self.lmap = {}
        self.amap = {}
        self.tags = {}
        self.tag_count = 0

    def add_func(self, fname, offset):
        self.fmap[fname] = offset

    def add_localvar(self, lname, offset):
        self.lmap[lname] = offset

    def add_attribute(self, aname, offset):
        self.amap[aname] = offset

    def add_tag(self, tname):
        self.tags[tname] = self.tag_count
        self.tag_count += 1

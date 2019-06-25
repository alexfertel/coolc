class Context:
    def __init__(self):
        self.fmap = {}
        self.mmap = {}
        self.lmap = {}
        self.amap = {}
        self.tags = {}
        self.tag_count = 0

    def add_func(self, fname, offset):
        self.fmap[fname] = offset

    def add_var(self, lname, offset):
        self.lmap[lname] = offset

    def add_attribute(self, aname, offset):
        # Check this is (+ 1) and not (+ 4)
        self.amap[aname] = offset + 1

    def add_tag(self, tname):
        self.tags[tname] = self.tag_count
        self.tag_count += 1

    def add_mf(self, mname, fname):
        self.mmap[mname] = fname

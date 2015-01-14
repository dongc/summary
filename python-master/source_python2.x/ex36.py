class Song(object):
    def __init__(self, lyrics):
        self.lyrics = lyrics
    
    def sing(self):
        for line in self.lyrics:
            print line

happyDay = Song(["Happy birday to you ",
                "I don't want to get sued",
                "So I'll stop right there"])

happyDay.sing()

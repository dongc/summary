import hashmap

jazz = hashmap.new()

hashmap.set(jazz, 'Miles Davis', 'Flamenco Sketches')
hashmap.set(jazz, 'Miles Davis', 'Beginning To See The Light')
hashmap.set(jazz, 'Duke Ellington', 'kind of Blue')
hashmap.set(jazz, 'Billy Strayhorn', 'Lush Life')

print "-" * 10
hashmap.list(jazz)

print "-" * 10
print hashmap.get(jazz, 'Miles Davis')

print "-" * 10
hashmap.delete(jazz, "Miles Davis")
hashmap.list(jazz)



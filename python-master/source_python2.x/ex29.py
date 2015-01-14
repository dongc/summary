

print "You enter a dark room with  two doors"

door = raw_input("> ")

if door == "1": 
    print "There's a giant bear here eating a cheese cake"
    print "1 Take the cake."
    print "2 scream at the bear."

    bear = raw_input("> ")

    if bear == "1" :
        print "The bear eats your face off.Good job!"
    elif bear == "2":
        print "The bear eats you legs off.Good job!"
    else:
        print "Well, doing %s is probably better. Bear runs away." % bear


elif door == "2":
    print "You stare into the endless abyss at Cthulhu's "
    print "1.Blueberries."
    print "2.Yellow jacket clothespins."
    print "3.Understanding revolves yelling melodis."

    insanity = raw_input("> ")

    if insanity =="1" or insanity =="2":
        print "Your body  survies powerd by a mind of jello."
    else:
        print "The insanity rots your eyss into a pool of muck"
else:
    print "You stumble around and fail on a knife and die"

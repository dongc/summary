
states = {
    'Oregon': 'OR',
    'Florida': 'FL',
    'California': 'CA',
    'New York': 'NY',
    'Michigan': 'MI'
}

cities = {
    'CA': 'San Francisco',
    'MI': 'Detroit',
    'FL': 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

print '-' * 10
print "NY State has:", cities['NY']
print "OR State has:", cities['OR']

print '-' * 10
print "Michigan has:", cities[states['Michigan']]
print "Floriad has:", cities[states['Florida']]
        

print '-' * 10
for state, abbrev in states.items():
    print "%s has the city %s" % (state, abbrev)


print '-' * 10
for abbrev, city in cities.items():
    print "%s has the city %s" % (abbrev, city)


print '-' * 10
for state, abbrev in states.items():
    print "%s state is abbreviated %s and has city %s" % (state, abbrev, cities[abbrev])

if not state:
    print "Sorry, no texas."

city = cities.get('TX', 'Does Not Exit')
print "the city for the state tx is : %s" % city
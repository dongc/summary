
class Animal(object):
    pass

class Dog(Animal):
    def __init__(self, name):
        self.name = name


class Cat(Animal):
    def __init__(self, name):
        self.name = name


class Person(object):
    def __init__(self, name):
        self.name = name
        self.pet = None


class Employee(Person):
    def __init__(self, name, salary):
        super(Employee, self).__init__(name)
        self.salary = salary


class Fish(object):
    pass

class Salmon(Fish):
    pass

class Halibut(Fish):
    pass

rover = Dog("Rover")
print "Dog instance :%r" % rover.name

satan = Cat("Satan")
print "Cat instance :%r" % satan.name

mary = Person("Mary")
print "Person instance name: %r , pet : %r" % (mary.name, mary.pet)
mary.pet = satan

frank = Employee("Frank", 120000)
print "Person instance name: %r , salary %r" % (frank.name, frank.salary)
frank.pet = rover

flipper = Fish()

crouse = Salmon()

harry = Halibut()


class Greeter:
    //field definition -> := syntax
    name := null
    //constructor method
    /*Defines how you can construct objects from the class*/
    //it says that the class Greeter takes a single argument(name)
    //but the . prefix to the .name parameter actually tells us that name is immediately stored as a field on Greeter objects
    constructor .name = "World":
    //class methods
    say_hi: print "Hi $name.trim!"
    say_bye: print "Bye $name.trim, come back soon"

main:
    //create a greeter object
    greeter := Greeter "Daniel"
    greeter.say_hi
    greeter.say_bye
    //access class fields
    print "Name: $(greeter.name)"
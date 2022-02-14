class Greeter:
    //field definition -> := syntax
    names := []
    //constructor method
    /*Defines how you can construct objects from the class*/
    //it says that the class Greeter takes a single argument(name)
    //but the . prefix to the .name parameter actually tells us that name is immediately stored as a field on Greeter objects
    constructor name = "World":
        names.add name
    //class methods
    say_hi --greeting="Hi":
        //loop through all names
        names.do: print "$greeting $it!"
    say_bye:
        everyone := names.join ", "
        print "Bye $everyone, come back soon"

main:
    //create a greeter object
    greeter := Greeter "Daniel"

    greeter.names.add "Chege"
    greeter.names.add "Nduati"

    greeter.say_hi --greeting="Habari"
    greeter.say_bye
    //access class fields
    print "Names: $(greeter.names)"
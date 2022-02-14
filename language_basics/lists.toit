main:
    list := ["Oranges","Bananas","Apples","Pineapples","Grapes"]
    print "There are $(list.size) items in the list."
    //
    list.sort --in_place
    print "The fruits in the list are:"
    list.do: print("$(it)")
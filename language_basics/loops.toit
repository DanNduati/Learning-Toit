//print numbers from 0 to n with n excluded
print_n_numbers n:
    n.repeat: print it//like the do methid there is an automatic variable it that gives the iteration number
//more flexible loops
//print odd numbers
print_odd_numbers n:
    for i:=1; i<n; i+=1:
        if i%2 != 0:
            print i
main:
    //print_n_numbers 10
    print_odd_numbers 20
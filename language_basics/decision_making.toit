//if statements and basic expressions
fib n:
    if n<1: return n
    return (fib n-1) + (fib n-2)

main:
    print("The 10th fibonacci number: $(fib 10)")
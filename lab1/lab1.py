def fib(n):
    if n <= 1:
        return n
    return fib(n - 1) + fib(n - 2)

with open("output/rfibonacci.txt", "w") as f:
    for i in range(25):
        f.write(f"{fib(i)}\n")
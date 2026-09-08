n = 25
a, b = 0, 1

with open("output/fibonacci.txt", "w") as f:
    for _ in range(n):
        f.write(f"{a}\n")
        a, b = b, a + b
main: fibonacci/main.c fibonacci/fibonacci.c
	cc -I fibonacci/headers fibonacci/main.c fibonacci/fibonacci.c -o main

tests: fibonacci/tests.c fibonacci/fibonacci.c
	cc -I fibonacci/headers fibonacci/tests.c fibonacci/fibonacci.c -o test_runner

run: main
	./main

clean:
	rm -f main test_runner

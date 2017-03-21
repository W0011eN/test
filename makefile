all:main deposit deposit-calc

main:src/main.c
	gcc -o build/main.o -c -Wall -Werror src/main.c 

deposit:src/deposit.c
	gcc -o build/deposit.o -c -Wall -Werror src/deposit.c

deposit-calc: build/main.o build/deposit.o
	gcc build/main.o build/deposit.o -o bin/deposit-calc

clean:
	rm -rf build/*.* bin/* bin/*.*
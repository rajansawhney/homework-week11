CC = gcc

write_txt: write_txt.c
	gcc write_txt.c -o write_txt

read_txt: read_txt.c
	gcc read_txt.c -o read_txt

write_binary: write_binary.c
	gcc write_binary.c -o write_binary

read_binary: read_binary.c
	gcc read_binary.c -o read_binary

clean:
	rm write_txt read_txt write_binary read_binary lab11.txt lab11.bin

test: write_txt read_txt write_binary read_binary
	bash test.sh

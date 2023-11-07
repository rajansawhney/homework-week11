CC = gcc

write_read_student_info: write_read_student_info.c
	gcc write_read_student_info.c -o write_read_student_info

read_reverse: read_reverse.c
	gcc read_reverse.c -o read_reverse

clean:
	rm write_read_student_info read_reverse hw11.txt

test: write_read_student_info read_reverse 
	bash test.sh

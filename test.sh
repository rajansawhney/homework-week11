echo "Running tests..."
echo

echo "*****"
echo
echo "Write and read student info..."
output_write_read_student_info=$(./write_read_student_info < test/input_write_read_student_info.txt)
echo $output_write_read_student_info

expected_output_student_info1="Name: Barack
Age: 60"

expected_output_student_info5="Name: Patsy
Age: 85"

FILE=$(dirname "$BASH_SOURCE")/hw11.txt
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
    exit 1
fi


if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_write_read_student_info == *$expected_output_student_info1* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_student_info1' but got: $output_write_read_student_info"
  exit 1
fi

if [[ $output_write_read_student_info == *$expected_output_student_info5* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_student_info5' but got: $output_write_read_student_info"
  exit 1
fi

echo "*****"
echo
echo "Read reverse..."
output_read_reverse=$(./read_reverse)
echo $output_read_reverse


if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

expected_output_read_bin="n1: 4   n2: 20  n3: 21
n1: 3   n2: 15  n3: 16
n1: 2   n2: 10  n3: 11
n1: 1   n2: 5   n3: 6"| tr -d '\r'


if [[ $output_read_reverse == *$expected_output_read_bin* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_read_bin' but got: $output_read_reverse"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0

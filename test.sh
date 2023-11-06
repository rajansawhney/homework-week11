echo "Running tests..."
echo

echo "*****"
echo
echo "Write and read text..."
output_write_txt=$(./write_txt <test/input_write_txt.txt)
echo $output_write_txt


FILE=$(dirname "$BASH_SOURCE")/lab11.txt
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

output_read_txt=$(./read_txt)
echo "$output_read_txt"
expected_output_read_txt="25125126"

if [[ $output_read_txt == *$expected_output_read_txt* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_read_txt' but got: $output_read_txt"
  exit 1
fi

echo "*****"
echo
echo "Write and read binary..."
output_write_bin=$(./write_binary)
echo $output_write_bin


FILE=$(dirname "$BASH_SOURCE")/lab11.bin
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

output_read_bin=$(./read_binary)
echo "$output_read_bin"
expected_output_read_bin="n1: 1   n2: 5   n3: 6
n1: 2   n2: 10  n3: 11
n1: 3   n2: 15  n3: 16
n1: 4   n2: 20  n3: 21"| tr -d '\r'


if [[ $output_read_bin == *$expected_output_read_bin* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_read_bin' but got: $output_read_bin"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0

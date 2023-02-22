echo "Learn Arithmatic Operations"

# Use value from command line arguments $0 corresponds to Filename
value_1=$1
value_2=$2;

echo "Addition: "expr $value_1 + $value_2
echo $((value_1 + $value_2))

echo "Subtraction: "expr $value_2 + $value_1
echo $((value_2 - $value_1))

echo "Multiplication: "expr $value_1 \* $value_2
echo $((value_1 * $value_2))

echo "Division: "expr $value_2 / $value_1
echo $((value_2 / $value_1))

echo "\nAverage Example by KodeKloud"

# KodeKloud Example
read -p "Enter value1: " num_1
read -p "Enter value2: " num_2
read -p "Enter value3: " num_3

sum=$(( num_1 + num_2 + num_3 ))
average=$(echo "$sum / 3" | bc -l)
echo "Average is" $average
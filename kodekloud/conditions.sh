# Runs in KodeCloud

mission_name=lunar-mission

echo "rocket-add lunar-mission"
echo "rocket-start-power lunar-mission"
echo "rocket-internal-power lunar-mission"
echo "rocket-start-sequence lunar-mission"
echo "rocket-start-engine lunar-mission"
echo "rocket-lift-off lunar-mission"
echo "rocket-status lunar-mission"


# Conditional Operators:

# Function defined
function RocketStatus {
    if [ $1 = 'Launching' ]; then
        echo "Launch Successfully"
    elif [ $1 = 'Failed' ]; then
      echo "Launch Failed"
    else
        echo "Default Value"
    fi
}

echo "\nFunction Invoking"

# Even status can be stored in a variable:
rocket_status="Launching"
RocketStatus $rocket_status
rocket_status='Failed'
RocketStatus $rocket_status
rocket_status='Unknown'
RocketStatus $rocket_status
echo

## Check if Command line arguments are passed

# The -z flag is a conditional expression used in shell scripts, 
# and it is typically used to check whether a variable or string is empty. 
# It returns true if the variable or string is empty, and false otherwise.

if [ -z $1 ]; then
  echo "No Command line arguments are passed!!"
else
  echo "Command line arguments $1"
fi

echo "Condtional OR statement"

value_1=$1
value_2=$2;

if [ -z $value_1 ] || [ -z $value_2 ]; then
  echo "Either value 1 or value 2 is missing"
  exit
else 
  echo "Value_1: $value_1";
  echo "Value_2: $value_2";
fi

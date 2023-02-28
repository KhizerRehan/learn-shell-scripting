# Function defined
function WhatIsTheStatus {
    if [ $1 = 'Success' ]; then
        return 1;
    elif [ $1 = 'Failed' ]; then
      return 2
    else
        return 4
    fi
}

echo "\nFunction Invoking"
status="Success"
WhatIsTheStatus $status
echo $? # print status

status="Failed"
WhatIsTheStatus $status
echo $? # print status

status="Random"
WhatIsTheStatus $status
echo $? # print status


# ---------------------------

function launch_rocket {
  mission_name=$1
  echo "rocket-add $mission_name"
  echo "rocket-start-power $mission_name"
  echo "rocket-internal-power $mission_name"
  echo "rocket-start-sequence $mission_name"
  echo "rocket-start-engine $mission_name"
  echo "rocket-lift-off $mission_name"
  echo "rocket-status $mission_name"

  # Even status can be stored in a variable:
  rocket_status="Launching"
  echo "Status of launch: $rocket_status"
  echo
}

launch_rocket luner-rocket
launch_rocket mars-rocket


echo "Function with echo"
function sum {
  value_1=$1
  value_2=$2;
  
  # Important!! What ever you print inside a function it will be assigned to variable from where it is called
  # echo acts as return statement in shell scription and it returns the 'echoed' value ot variable outside func
  # we can also use `return` keyword but only issue it can be used for numbers no value of other types can returned
  # As `return` is basically used for "EXIT STATUS" only by echo $? to store script status only!!

  echo $(( $value_1 + $value_2 ))
}

sum=$( sum $1 $2)
echo "Sum using echo: $sum"
echo $?

echo
echo "Function with return"

function add {
  value_1=$1
  value_2=$2;
  return $(( $value_1 + $value_2 ))
}

sum1=$( add $1 $2 )
echo "No output as return only give status code -> <EMPTY VARIABLE VALUE>: $sum1"

# Order of statments is also important since status $? stores only last saved value
# printing status below after above echo statement will print 0 as per my undertanding
# Status will be overided as prev "echo" statement will have succes and status will set to 0
echo $? 

echo
sum2=$( add $1 $2 )
sum2=$?
echo "Sum using return: $sum2"
# ---------------------------



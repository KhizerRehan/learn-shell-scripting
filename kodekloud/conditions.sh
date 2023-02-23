# Runs in KodeCloud

mission_name=lunar-mission

echo "rocket-add lunar-mission"
echo "rocket-start-power lunar-mission"
echo "rocket-internal-power lunar-mission"
echo "rocket-start-sequence lunar-mission"
echo "rocket-start-engine lunar-mission"
echo "rocket-lift-off lunar-mission"
echo "rocket-status lunar-mission"

# Even status can be stored in a variable:
rocket_status="Launching"
echo "rocket_status=$rocket_status"
echo "Status of launch: $rocket_status"


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

RocketStatus $rocket_status
rocket_status='Failed'
RocketStatus $rocket_status
rocket_status='Unknown'
RocketStatus $rocket_status
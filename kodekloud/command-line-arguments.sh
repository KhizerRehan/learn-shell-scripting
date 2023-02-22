# Runs in KodeCloud
echo "File name is $0"
echo "Launching mission for $1"

mission_name=$1

# Since we don't have these commands so in contrast to commands 
# I have placed echo statements to depict following commands are executed.

mkdir $mission_name
echo "rocket-add $mission_name"
echo "rocket-start-power $mission_name"
echo "rocket-internal-power $mission_name"
echo "rocket-start-sequence $mission_name"
echo "rocket-start-engine $mission_name"
echo "rocket-lift-off $mission_name"
echo "rocket-status $mission_name"

# Even status can be stored in a variable:
status="Success"
echo "rocket_status=$(rocket-status $mission_name)"
echo "Status of launch: $status"
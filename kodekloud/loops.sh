base_path=labs/txt

echo "Reading from File"
for mission in $(cat $base_path/loops-data.txt)
do
echo "Launching $mission"
done;

echo;
echo "Looping to numbers for-in syntax"

for mission in {0..10}
do
echo "Number $mission"
done;

echo;
echo "Looping to numbers for syntax"

for (( mission = 0 ; mission <= 10 ; mission++ ))
do
echo "For Loop Index $mission"
done;

echo;
echo "Read from files using loop"

# Two Different syntax for printing variable:
echo "Two Different Syntax for printing variable";
echo "BasePath: $base_path"
echo "BasePath: ${base_path}"

for file in $(cat ${base_path}/files.txt)
do
echo "$(cat $base_path/$file)"
done;
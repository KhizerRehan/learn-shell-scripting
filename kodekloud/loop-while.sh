echo "Do While Loop";

while true
do
 echo "Press 1 to display one"
 echo "Press 2 to display two"
 echo "Press 3 to display three"
 echo "Press 4 to break the loop"
 echo "Press 5 to show menu again"
 read -p "Enter Choice: " choice

 if [ $choice -eq 1 ]; then
    echo "One Pressed"
 elif [ $choice -eq 2 ]; then
      echo "Two Pressed"
 elif [ $choice -eq 3 ]; then
      echo "Three Pressed"
 elif [ $choice -eq 4 ]; then
      break;
 else 
      continue;
 fi
done;
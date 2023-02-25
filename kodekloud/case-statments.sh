echo "Case Statement";

 echo "1: Print Shutdown"
 echo "2: Print Restart"
 echo "3: Exit Menu"
 read -p "Enter Choice: " choice

case $choice in
    1) echo 'Shutting down';;
    2) echo 'Restarting';;
    3) break;;
    *) continue;;
esac
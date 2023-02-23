
echo -e " Log name   \t      GET      \t      POST    \t   DELETE "
echo -e "------------------------------------------------------------"

base_path=logs

for file in $(cat txt/logs-files.txt)
do
 get_requests=$(cat $base_path/${file}.log | grep "GET" | wc -l)
 post_requests=$(cat $base_path/${file}.log | grep "POST" | wc -l)
 delete_requests=$(cat $base_path/${file}.log | grep "DELETE" | wc -l)
 echo "$file    \t ${get_requests}    \t    ${post_requests}   \t   ${delete_requests}"
done
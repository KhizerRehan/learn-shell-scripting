# Inorder to test this script you can run this script twice
# jpg -> will be converted to txt 
# txt -> will be converted to jpg


for file in $(ls images)
do
        if [[ $file = *.jpg ]]; then
          echo "File=$file"
                new_name=$(echo $file| sed 's/jpg/txt/g')
                echo $new_name
                mv images/$file images/$new_name
        else
                new_name=$(echo $file| sed 's/txt/jpg/g')
                echo $new_name
                mv images/$file images/$new_name
        fi
done
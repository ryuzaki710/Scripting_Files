#/bin/bash
#Script to reverse a string
#METHOD 1:
<<comment
read -p "Enter a string: " str
reversed=$(echo "$str" | rev)
echo "Reversed string = $reversed"
comment
<<comment
#METHOD 2

read -p "Enter a string: " str

reversed=""
length=${#str}

for (( i=$length-1; i>=0; i-- )); do
    reversed="$reversed${str:$i:1}"
done

echo "Reversed string = $reversed"
comment

#METHOD3 -Using function
reverse_string() {
    local input="$1"
    local reversed=""
    for (( i=${#input}-1; i>=0; i-- )); do
        reversed="$reversed${input:$i:1}"
    done
    echo "$reversed"
}

read -p "Enter a string: " input
result=$(reverse_string "$input")
echo "Reversed = $result"



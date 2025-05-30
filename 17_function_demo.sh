#/bin/bash
#function method 1
function welcome {
	echo "Welcome $1"
	echo "Age is =  $2"
}
#call function with arguments
welcome Raju 20
welcome Shyam 25

echo ""
#method 2 of declaration without function keyword

addition(){
	local num1=$1
	local num2=$2
	let sum=$num1 +$num2
	echo "Sum of $num1 and $num2 = $sum "
}

addition 20 30 #call function with arguments
<<comment

Output:
Welcome Raju
Age is =  20
Welcome Shyam
Age is =  25

Sum of 20 and 30 = 20
comment


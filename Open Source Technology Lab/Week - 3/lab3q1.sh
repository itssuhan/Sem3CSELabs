echo "Enter the Number :"
read n
no=`expr $n % 2`
if [ $no -eq 0 ]
    then
    echo "The no $n is Even"
    else
    echo "The no $n is Odd"
fi
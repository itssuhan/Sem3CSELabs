echo "Enter the number :"
read n
i=1
j=1
echo "The First $n Odd Numbers are :"
until [ $i -gt $n ]
do
    echo $j
    i=`expr $i + 1`
    j=`expr $j + 2`
done
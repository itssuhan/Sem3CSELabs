echo "Enter the number. :"
read n
p=1
i=1
until [ $i -gt $n ] 
do
p=`expr $p \* $i`
i=`expr $i + 1`
done
echo $p
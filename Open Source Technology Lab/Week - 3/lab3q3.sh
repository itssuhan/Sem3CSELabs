echo "Enter a b c coefficients"
read a b c
D=`expr $((b*b-4*a*c))`
echo "Discriminant is $D"
disc="e"
if [ $D -gt 0 ]
then
disc="r"
elif [ $D -lt 0 ]
then
disc="i"
fi
case $disc in
"e")
root1=$(echo "((-1*$b)/(2*$a))" | bc -l)
root2=$(echo "((-1*$b)/(2*$a))" | bc -l)
echo "Roots are $root1 and $root2"
;;
"r")
rootD=$(echo "sqrt($D)" | bc -l)
root1=$(echo "((-1*$b+$rootD)/(2*$a))" | bc -l)
root2=$(echo "((-1*$b-$rootD)/(2*$a))" | bc -l)
echo "Roots are $root1 and $root2"
;;
"i")
rootD=$(echo "sqrt(-1*$D)" | bc -l)
real=$(echo "((-1*$b)/(2*$a))" | bc -l)
img=$(echo "$rootD/(2*$a)" | bc -l)
echo "Root1 is $real + $img""i"
echo "Root2 is $real — $img""i"
;;
esac

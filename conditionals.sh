# Bash conditional statements
# Equal to condition
count=10
if [ $count -eq 8 ]
then
    echo 'Hello'
else
    echo 'No Hello!!!!!'
fi

# Not equal to condition
if [ $count -ne 8 ]
then
    echo 'The condition is true'
else
    echo 'False'
fi

# To use the mathematical symbols in a bash script, you need to use a round bracket instead of the square one. Eg. [>,<, =, !=, <=, >=]
if (( $count > 9 ))
then
    echo 'True condition'
else
    echo 'False condition'
fi

# elif statement

# if (( $count <= 9 ))
# then
#     echo 'True condition'
# elif (( $count <=12 ))
# then
#     echo 'We have a situation here'
# else
#     echo 'False condition'
# fi

# bash 'and' and 'or' conditions
# age=25
# You can also use -a to achive same result
# if [ "$age" -gt 20 ] && [ "$age" -lt 24 ]
# then
#     echo 'You have a truthy condition here'
# else
#     echo 'What do we do about this'
# fi

# # Another way is:
# if [ "$age" -gt 20 -a "$age" -lt 24 ]
# then
#     echo 'You have a truthy condition here'
# else
#     echo 'What do we do about this'
# fi

# The "or" versions
# if [ "$age" -gt 26 ] || [ "$age" -lt 30 ]
# then
#     echo 'You have a truthy condition here'
# else
#     echo 'What do we do about this'
# fi


# if [ "$age" -gt 26 -o "$age" -lt 30 ]
# then
#     echo 'You have a truthy condition here'
# else
#     echo 'What do we do about this'
# fi

# Bash do-while loop
number=1
while [ $number -lt 10 ]
do
    echo "$number"
    number=$((number + 1))
done

# OR
until [ $number -ge 15 ]
do
    echo "$number"
    number=$((number + 1))
done

# "for" loop

for i in 1 2 3 4 5
do
    echo $i
done

# OR
for ((i=0; i<5; i++))
do
    echo $i
done

# Break and Continue
for ((i=0; i<10; i++))
do
    if [ $i -eq 3 ] || [ $i -eq 7 ]
    then
        continue
    fi
    echo $i
done


for ((i=0; i<10; i++))
do
    if [ $i -eq 3 ]
    then
        break
    fi
    echo $i
done


for i in 1 5 8 9 12
do 
    if [ $i -gt 2 ]
    then
        echo "Hmmmmmmmmmmm" $i
        echo $i
    fi
done


echo "1 ios    2 android"
read input_value
echo "value = ${input_value}"

if  [[  ${input_value}    -eq 1 ]] ; then
echo "ios"
else
echo "android"
fi

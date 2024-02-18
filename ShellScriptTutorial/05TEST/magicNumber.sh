#/bin/sh
# 'grep "^0-9"'는 입력된 값에서 숫자로 구성되지 않는 부분을 찾는다.
# '/dev/null'로 값을 보내는 것은, echo로 출력되어어할 값을 출력하지 않겠다는 것을 의미한다.
# '2>&1'은 표준 출력, 오류 출력 모두 출력하지 않음을 의미한다.
echo -en "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
  # If the grep found something other than 0-9
  # then it's not an integer.
  echo "Sorry, wanted a number"
else
  # The grep found only 0-9, so it's an integer. 
  # We can safely do a test on it.
  if [ "$X" -eq "7" ]; then
    echo "You entered the magic number!"
  fi
fi
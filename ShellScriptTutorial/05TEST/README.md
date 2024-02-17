# Test 

- Test는 쉘 스크립트에서 분기 처리를 할 때 많이 사용된다.
- Test는 사실 `[`로 자주 호출되며, 쉘 스크립트를 읽을 때 더 좋은 가독성을 얻기 위함이다.
   
```bash
$ type [
[ is a shell builtin
$ which [
/usr/bin/[
$ ls -l /user/bin/[
$ ls -l /user/bin/test
```
- 즉, `[`는 명령어로 인식되므로 다음과 같이 띄어쓰기를 하지 않는다면 싫행되지 않는다.
   
```bash
if [$foo = "bar" ] #ERROR
```

> **쉘 스크립트에서의 비교 연산**
> 다른 언어들 처럼 `==`를 허용하는 Shell 또한 있지만, 대부분 문자열 동등 비교에는 `=` 정수 동등 비교에는 `-eq`를 사용한다.

### Test 사용법

- Test는 다음과 같이 `if`나 `while` 문법에서 자주 사용된다.

```bash
if [ ... ]
then
  # if-code
else
  # else-code
fi
```


 

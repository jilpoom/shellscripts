# Hints And Tips

- Unix의 대부분은 문자열(Text)이므로, 이를 다루는 많은 명령어가 존재한다.
- Shell Script를 사용해 자동화할 수 없는 것은, GUI 전용 유틸리티 뿐이며, 문자열, 파일과 관련된 것은 모든 것을 자동화할 수 있다.
- 문자열을 다루는 여러 방법에 대해 공유한다.

## `grep`

- `grep`은 문자열 검색기이다.
- 정규표현식, 일반 문자열을 둘 다 매개변수로 사용할 수 있으며 사용 방법은 다음과 같다.
   
```bash
$ cat grep.txt
a
b
c
d
e
f
g
h
i
j
k
$ grep a ./grep.txt
a                                              
```
   
## `tr` 
- `tr`은 문자열 치환기이다.
- 공백을 제거하거나, 대소문자를 변경할 수 있다.
   
```bash
$ echo "a:a" | tr ":" " "
a a
$ echo "abc" | tr -d "b"
ac
$ echo "abc" | tr "[a-c]" "[A-C]"
ABC
```

## `awk`
- 문자열을 주어진 구분자로 분리하여 처리한다, 내장 함수를 사용할 수 있다.
   
```bash
$ echo "Hello World" | awk '{ print $0 }'
Hello World

$ echo "Hello World" | awk '{ print $1 }'
Hello

$ echo "Hello World" | awk '{ print $2 }'
World

$ echo "Hello,World" | awk -F "," '{ print $2 }'
World

$ echo "i have a water." | awk -F " " '{ sub("a", "b", $4); print $4 }'
wbter.

...
```

## `sed`
- 텍스트 데이터를 주어진 입력값과 매칭하여 명령을 처리한다.

```bash
$ cat sample.txt 
one
two
three
four

# o를 1로 변경 
# s/이전문자/변경할문자/g 형식으로 입력 
$ sed 's/o/1/g' sample.txt 
1ne
tw1
three
f1ur

# 탭(Tab)을 콤마(,)로 변경하고 출력 
$ sed 's/\t/,/g' sample.txt

# 탭(Tab)을 콤마(,)로 변경하고 sample.txt 에 덮어 씀
$ sed -i 's/\t/,/g' sample.txt
```

> **`sed`과 `awk`**
>   
> `awk`는 `sed`에 비해 많은 문자열 처리 기능을 제공하지만, 그만큼 무겁다(110kb). 문자열을 단순 치환하는 명령을 하고 싶다면, 그보다 좀 더 가벼운 `sed`를 사용하자.



# Reference
- [Bash 쉘 스크립트 개발 시작하기](https://wikidocs.net/32351)
- [Shell Script Tutorial - Hints and Tips](https://www.shellscript.sh/hints.html)

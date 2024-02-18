# Case

- Case문은 다음과 같은 구문으로 사용한다.

```bash
read INPUT_STRING
case $INPUT_STRING in
    hello) 
        echo "HELLO WORLD" ;;
    bye)
        echo "BYE WORLD" ;;
    *) 
        echo "Not In hello, bye"
esac
```

- `*` 는 필수는 아니지만, 입력될 값외에 다른 값이 입력되었을 때에 대한 디버깅 목적으로  사용할 수 있다.
- `;;` 는 한 분기에 대한 마지막을 의미한다. 
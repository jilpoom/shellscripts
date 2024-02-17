# WildCards

### 만약 폴더 내부의 특정 확장자를 가진 파일들만 이동시키고 싶다면

- WildCard는 현재 폴더 내부의 파일 전체 이름을 가리킨다.
- 다음과 같이 `cp` 명령어를 활용해, 다음과 같이 활용할 수 있다.
   
```bash
$ cp /tmp/a/* /tmp/b
$ cp /tmp/a/*.txt /tmp/b
```


# Shell Script 변수

## 변수의 범위(Scope Of Variables)

- `#!/bin/sh`을 첫 줄에 명시적으로 적어주면, sh가 실행하기 위해, 새 Shell이 생성되며 Linux 운영 체제에서 사용 선언한 변수를 활용하기 위해서는 다음과 같이 `export` 명령어를 활용한다.

```bash
$ MYVAR=hello
$ export MYVAR
$ ./uselessVar.sh
MYVAR is: hello
MYVAR is: hi there
```

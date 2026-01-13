Use the `docker run` command with the `-v` flag for bind mounts. The format is `-v <host-path>:<container-path>`.

- To get the absolute path of the current directory, you can use `$(pwd)`.
- To make a mount read-only, add `:ro` at the end.

Here is the full command structure:
```bash
docker run -d \
  --name c9-dev-server \
  -p 8009:80 \
  -v "$(pwd)/app":/usr/share/nginx/html:ro \
  nginx
```

---

## 한국어

바인드 마운트를 위해 `-v` 플래그와 함께 `docker run` 명령을 사용하세요. 형식은 `-v <호스트-경로>:<컨테이너-경로>`입니다.

- 현재 디렉토리의 절대 경로를 얻으려면 `$(pwd)`를 사용할 수 있습니다.
- 마운트를 읽기 전용으로 만들려면 끝에 `:ro`를 추가하세요.

전체 명령 구조는 다음과 같습니다:
```bash
docker run -d \
  --name c9-dev-server \
  -p 8009:80 \
  -v "$(pwd)/app":/usr/share/nginx/html:ro \
  nginx
```

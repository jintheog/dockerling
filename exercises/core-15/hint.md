A multi-stage build uses multiple `FROM` instructions. Each `FROM` starts a new build stage. You can name stages and copy artifacts from one stage to another.

Here is the basic structure:

```Dockerfile
# --- Build Stage ---
# Give the stage a name, like "builder"
FROM golang:1.21-alpine AS builder

# Set the working directory
WORKDIR /src

# Copy source and build the static binary
COPY app/ .
# CGO_ENABLED=0 creates a static binary that can run in a minimal image like 'scratch'
RUN CGO_ENABLED=0 go build -o /app/server .


# --- Final Stage ---
# Start a new, clean stage from a minimal base image
FROM scratch

# Copy *only* the compiled binary from the "builder" stage
COPY --from=builder /app/server /server

# Expose the application port
EXPOSE 8080

# Set the command to run the binary
CMD ["/server"]
```
Using `scratch` results in the smallest possible image, as it's completely empty. `alpine` is another great choice if you need a shell or other basic utilities.

---

## 한국어

멀티 스테이지 빌드는 여러 `FROM` 명령어를 사용합니다. 각 `FROM`은 새로운 빌드 스테이지를 시작합니다. 스테이지에 이름을 지정하고 한 스테이지에서 다른 스테이지로 아티팩트를 복사할 수 있습니다.

기본 구조는 다음과 같습니다:

```Dockerfile
# --- 빌드 스테이지 ---
# "builder"와 같이 스테이지에 이름을 지정합니다
FROM golang:1.21-alpine AS builder

# 작업 디렉토리 설정
WORKDIR /src

# 소스 복사 및 정적 바이너리 빌드
COPY app/ .
# CGO_ENABLED=0은 'scratch'와 같은 최소 이미지에서 실행할 수 있는 정적 바이너리를 생성합니다
RUN CGO_ENABLED=0 go build -o /app/server .


# --- 최종 스테이지 ---
# 최소 기본 이미지에서 새롭고 깨끗한 스테이지 시작
FROM scratch

# "builder" 스테이지에서 컴파일된 바이너리*만* 복사
COPY --from=builder /app/server /server

# 애플리케이션 포트 노출
EXPOSE 8080

# 바이너리를 실행하는 명령 설정
CMD ["/server"]
```
`scratch`를 사용하면 완전히 비어 있으므로 가능한 가장 작은 이미지가 됩니다. 셸이나 기타 기본 유틸리티가 필요한 경우 `alpine`도 훌륭한 선택입니다.

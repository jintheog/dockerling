Directory: exercises/core-15

When you build a compiled application (like Go, Rust, or C++), your `Dockerfile` often needs a full SDK with compilers and build tools. However, the final container only needs the compiled binary to run. Including the entire SDK in your final image makes it unnecessarily large and increases its security attack surface.

**Multi-stage builds** solve this problem elegantly. You use one stage (e.g., `FROM golang AS builder`) to compile your code, and a second, separate stage (e.g., `FROM scratch`) to create the final, minimal image, copying *only* the compiled binary from the first stage.

## Your Task

In this directory, you will find a simple Go web application and a `Dockerfile` that builds it using a single stage.

Your task is to **refactor the `Dockerfile`** to use a multi-stage build.

1.  **The first stage** (the "builder"):
    *   Should start from a `golang` image (e.g., `golang:1.21-alpine`).
    *   Should build the Go application binary.

2.  **The second stage** (the "final" image):
    *   Should start from a minimal base image like `scratch` or `alpine`.
    *   Should copy the compiled binary from the builder stage into the final image.
    *   Should set the `CMD` to run the application.

The verification script will build your `Dockerfile` and check two things: that the resulting image is significantly smaller than the original single-stage build, and that the application inside it still runs correctly.

---

## 한국어

컴파일된 애플리케이션(Go, Rust, C++ 등)을 빌드할 때, `Dockerfile`은 종종 컴파일러와 빌드 도구가 포함된 전체 SDK가 필요합니다. 그러나 최종 컨테이너는 실행하기 위해 컴파일된 바이너리만 필요합니다. 최종 이미지에 전체 SDK를 포함하면 불필요하게 커지고 보안 공격 표면이 증가합니다.

**멀티 스테이지 빌드**는 이 문제를 우아하게 해결합니다. 하나의 스테이지(예: `FROM golang AS builder`)를 사용하여 코드를 컴파일하고, 두 번째 별도의 스테이지(예: `FROM scratch`)를 사용하여 최종 최소 이미지를 생성하며, 첫 번째 스테이지에서 컴파일된 바이너리*만* 복사합니다.

## 과제

이 디렉토리에서 간단한 Go 웹 애플리케이션과 단일 스테이지로 빌드하는 `Dockerfile`을 찾을 수 있습니다.

멀티 스테이지 빌드를 사용하도록 **`Dockerfile`을 리팩토링**하는 것이 과제입니다.

1.  **첫 번째 스테이지** ("빌더"):
    *   `golang` 이미지에서 시작해야 합니다 (예: `golang:1.21-alpine`).
    *   Go 애플리케이션 바이너리를 빌드해야 합니다.

2.  **두 번째 스테이지** ("최종" 이미지):
    *   `scratch`나 `alpine`과 같은 최소 기본 이미지에서 시작해야 합니다.
    *   빌더 스테이지에서 컴파일된 바이너리를 최종 이미지로 복사해야 합니다.
    *   애플리케이션을 실행하도록 `CMD`를 설정해야 합니다.

검증 스크립트가 `Dockerfile`을 빌드하고 두 가지를 확인합니다: 결과 이미지가 원래 단일 스테이지 빌드보다 상당히 작은지, 그리고 그 안의 애플리케이션이 여전히 올바르게 실행되는지.

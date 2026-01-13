Directory: exercises/core-07

So far, you've built an image by packaging a Python application. A common use case for Docker is also to package and serve static websites.

The `COPY` instruction is one of the most fundamental commands in a `Dockerfile`. It lets you copy files and directories from your local filesystem (the build context) into the image you are creating.

## Your Task

In this directory, you will find a subdirectory named `html` containing a simple website.

Your task is to **create a `Dockerfile`** that builds a new Nginx image serving this custom static content instead of the default Nginx welcome page.

Your `Dockerfile` should:
1.  Start from a lightweight Nginx image, such as `nginx:stable-alpine`.
2.  Use the `COPY` instruction to copy the contents of the `html` directory into the location where Nginx serves its static files from, which is `/usr/share/nginx/html`.

The verification script will build your image, run it, and check to see if your custom website is being served correctly.

---

## 한국어

지금까지 Python 애플리케이션을 패키징하여 이미지를 빌드했습니다. Docker의 일반적인 사용 사례 중 하나는 정적 웹사이트를 패키징하고 서비스하는 것입니다.

`COPY` 명령어는 `Dockerfile`에서 가장 기본적인 명령 중 하나입니다. 로컬 파일 시스템(빌드 컨텍스트)에서 생성 중인 이미지로 파일과 디렉토리를 복사할 수 있습니다.

## 과제

이 디렉토리에서 간단한 웹사이트가 포함된 `html` 하위 디렉토리를 찾을 수 있습니다.

기본 Nginx 환영 페이지 대신 이 커스텀 정적 콘텐츠를 서비스하는 새 Nginx 이미지를 빌드하는 **`Dockerfile`을 생성**하는 것이 과제입니다.

`Dockerfile`은 다음을 수행해야 합니다:
1.  `nginx:stable-alpine`과 같은 경량 Nginx 이미지에서 시작합니다.
2.  `COPY` 명령어를 사용하여 `html` 디렉토리의 내용을 Nginx가 정적 파일을 서비스하는 위치인 `/usr/share/nginx/html`로 복사합니다.

검증 스크립트가 이미지를 빌드하고, 실행하고, 커스텀 웹사이트가 올바르게 서비스되는지 확인합니다.

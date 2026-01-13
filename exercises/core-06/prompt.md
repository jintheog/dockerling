Directory: exercises/core-06

This exercise will introduce you to more `Dockerfile` instructions for adding metadata and making your images more configurable.

- `LABEL`: Adds metadata to an image, such as the maintainer's email or a version number.
- `ENV`: Sets persistent environment variables that are available during the build and when a container is run from the image.
- `CMD`: Specifies the default command to run when a container starts. We'll see how it can use environment variables.

## Your Task

In this directory, you will find a `Dockerfile` and a simple Python Flask application. Your task is to **modify the `Dockerfile`** to perform the following:

1.  **Add a `LABEL`** to the image. The key should be `org.dockerlings.author` and the value should be your name or email (e.g., `"Jane Doe <jane.doe@example.com>"`).
2.  **Set an `ENV`** variable named `PORT` with a value of `8000`.
3.  **Modify the `CMD`** instruction to use the `$PORT` environment variable to run the Flask application on the correct port. The application (`app.py`) is already written to read this environment variable.

The verification script will build your `Dockerfile`, inspect it for the correct `LABEL` and `ENV`, and then run it to ensure the application starts on the port you specified.

---

## 한국어

이 연습 문제에서는 메타데이터를 추가하고 이미지를 더 구성 가능하게 만드는 `Dockerfile` 명령어들을 소개합니다.

- `LABEL`: 유지보수자 이메일이나 버전 번호와 같은 메타데이터를 이미지에 추가합니다.
- `ENV`: 빌드 중과 이미지에서 컨테이너가 실행될 때 사용할 수 있는 영구 환경 변수를 설정합니다.
- `CMD`: 컨테이너가 시작될 때 실행할 기본 명령을 지정합니다. 환경 변수를 어떻게 사용할 수 있는지 살펴보겠습니다.

## 과제

이 디렉토리에서 `Dockerfile`과 간단한 Python Flask 애플리케이션을 찾을 수 있습니다. 다음을 수행하도록 **`Dockerfile`을 수정**하는 것이 과제입니다:

1.  이미지에 **`LABEL`을 추가**하세요. 키는 `org.dockerlings.author`이고 값은 여러분의 이름이나 이메일이어야 합니다 (예: `"Jane Doe <jane.doe@example.com>"`).
2.  값이 `8000`인 `PORT`라는 이름의 **`ENV` 변수를 설정**하세요.
3.  `$PORT` 환경 변수를 사용하여 올바른 포트에서 Flask 애플리케이션을 실행하도록 **`CMD` 명령어를 수정**하세요. 애플리케이션 (`app.py`)은 이미 이 환경 변수를 읽도록 작성되어 있습니다.

검증 스크립트가 `Dockerfile`을 빌드하고, 올바른 `LABEL`과 `ENV`를 검사한 다음, 지정한 포트에서 애플리케이션이 시작되는지 확인하기 위해 실행합니다.

Directory: exercises/core-05

It's time to build your own custom image!

Running pre-built images like `nginx` is useful, but the real power of Docker comes from packaging your own applications. This is done by writing a set of instructions in a file named `Dockerfile`.

## Your Task

In this directory, you will find a simple Python Flask application (`app.py`) and its dependencies (`requirements.txt`).

Your task is to **create a `Dockerfile`** in this directory that packages this application into an image.

Your `Dockerfile` should perform the following steps:
1.  Start from a suitable Python base image (e.g., `python:3.9-slim`).
2.  Set a working directory inside the image (e.g., `/app`).
3.  Copy the `requirements.txt` file into the image.
4.  Install the Python dependencies using `pip`.
5.  Copy the application source code (`app.py`) into the image.
6.  Inform Docker that the container will listen on port `5000` at runtime.
7.  Set the default command to run the Flask application when a container starts.

Once you have created your `Dockerfile`, the `check` command will build it and test if your application container runs correctly.

---

## 한국어

이제 직접 커스텀 이미지를 만들 시간입니다!

`nginx`와 같은 미리 빌드된 이미지를 실행하는 것도 유용하지만, Docker의 진정한 힘은 자신만의 애플리케이션을 패키징하는 데 있습니다. 이는 `Dockerfile`이라는 파일에 일련의 명령어를 작성하여 수행됩니다.

## 과제

이 디렉토리에서 간단한 Python Flask 애플리케이션 (`app.py`)과 그 의존성 (`requirements.txt`)을 찾을 수 있습니다.

이 애플리케이션을 이미지로 패키징하는 **`Dockerfile`을 생성**하는 것이 과제입니다.

`Dockerfile`은 다음 단계를 수행해야 합니다:
1.  적합한 Python 기본 이미지에서 시작합니다 (예: `python:3.9-slim`).
2.  이미지 내부에 작업 디렉토리를 설정합니다 (예: `/app`).
3.  `requirements.txt` 파일을 이미지로 복사합니다.
4.  `pip`를 사용하여 Python 의존성을 설치합니다.
5.  애플리케이션 소스 코드 (`app.py`)를 이미지로 복사합니다.
6.  런타임에 컨테이너가 포트 `5000`에서 수신 대기한다고 Docker에 알립니다.
7.  컨테이너가 시작될 때 Flask 애플리케이션을 실행하는 기본 명령을 설정합니다.

`Dockerfile`을 생성한 후, `check` 명령이 이를 빌드하고 애플리케이션 컨테이너가 올바르게 실행되는지 테스트합니다.

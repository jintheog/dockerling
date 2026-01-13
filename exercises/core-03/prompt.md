Directory: exercises/core-03

This exercise will teach you how to retrieve the logs from a container. This is a fundamental skill for debugging applications running inside Docker.

A container's standard output and standard error streams are captured and can be accessed at any time during the container's lifecycle.

## Task

In this directory, you will find a `Dockerfile`. Your task is to perform the following steps:

1.  **Build** the Docker image from the `Dockerfile` in this directory. Give it a memorable tag, for example: `logging-app`.
    ```bash
    docker build -t logging-app .
    ```

2.  **Run** the image in **detached mode** (`-d`). This keeps the container running in the background so you can retrieve its logs even after the process finishes. Give the container a name so you can easily reference it, for example: `my-logger`.
    ```bash
    docker run -d --name my-logger logging-app
    ```

3.  **Retrieve the logs** from the `my-logger` container using the `docker logs` command and save them to a file named `logs.txt` in this directory.

The verification script will check if the `logs.txt` file exists and if its content is correct. After you have captured the logs, you can clean up by stopping and removing the container.

---

## 한국어

이 연습 문제에서는 컨테이너에서 로그를 가져오는 방법을 배웁니다. 이는 Docker 내에서 실행되는 애플리케이션을 디버깅하는 데 필수적인 기술입니다.

컨테이너의 표준 출력과 표준 에러 스트림은 캡처되어 컨테이너의 수명 주기 동안 언제든지 접근할 수 있습니다.

## 과제

이 디렉토리에서 `Dockerfile`을 찾을 수 있습니다. 다음 단계를 수행하세요:

1.  이 디렉토리의 `Dockerfile`에서 Docker 이미지를 **빌드**하세요. 기억하기 쉬운 태그를 지정하세요 (예: `logging-app`).
    ```bash
    docker build -t logging-app .
    ```

2.  이미지를 **분리 모드** (`-d`)로 **실행**하세요. 이렇게 하면 컨테이너가 백그라운드에서 계속 실행되어 프로세스가 종료된 후에도 로그를 가져올 수 있습니다. 쉽게 참조할 수 있도록 컨테이너에 이름을 지정하세요 (예: `my-logger`).
    ```bash
    docker run -d --name my-logger logging-app
    ```

3.  `docker logs` 명령을 사용하여 `my-logger` 컨테이너에서 **로그를 가져와** 이 디렉토리에 `logs.txt` 파일로 저장하세요.

검증 스크립트가 `logs.txt` 파일이 존재하는지와 내용이 올바른지 확인할 것입니다. 로그를 캡처한 후에는 컨테이너를 중지하고 제거하여 정리할 수 있습니다.

Directory: exercises/core-04

This exercise will teach you the full workflow of managing files and executing commands in a running container. To prove you can do this, you won't be creating the file content yourself. Instead, you will execute a script inside the container that generates the content for you.

## Task

Your task is to copy a script into a running Nginx container, execute it, and then copy the resulting output file back to your host machine.

1.  **Run a container** in detached mode from the `nginx` image. Name it `c4-container`.
    ```bash
    docker run -d --name c4-container nginx
    ```

2.  **Copy the script** from your host into the container. The script `run-inside-container.sh` is provided in this directory. Copy it to the `/tmp` directory inside the container.

3.  **Make the script executable** inside the container using `docker exec`.

4.  **Execute the script** inside the container, also using `docker exec`. The script will generate a new file at `/tmp/container-info.txt`.

5.  **Copy the output file** (`/tmp/container-info.txt`) from the container back to your current directory on the host.

The verification script will then check this `container-info.txt` file for the correct content.

**Cleanup:** When you are done, stop and remove the container: `docker stop c4-container && docker rm c4-container`.

---

## 한국어

이 연습 문제에서는 실행 중인 컨테이너에서 파일을 관리하고 명령을 실행하는 전체 워크플로우를 배웁니다. 이를 증명하기 위해 직접 파일 내용을 만들지 않고, 컨테이너 내부에서 스크립트를 실행하여 내용을 생성합니다.

## 과제

실행 중인 Nginx 컨테이너에 스크립트를 복사하고, 실행한 다음, 결과 출력 파일을 호스트 머신으로 다시 복사하는 것이 과제입니다.

1.  `nginx` 이미지에서 분리 모드로 **컨테이너를 실행**하세요. 이름은 `c4-container`로 지정하세요.
    ```bash
    docker run -d --name c4-container nginx
    ```

2.  호스트에서 컨테이너로 **스크립트를 복사**하세요. 이 디렉토리에 제공된 `run-inside-container.sh` 스크립트를 컨테이너 내부의 `/tmp` 디렉토리로 복사하세요.

3.  `docker exec`를 사용하여 컨테이너 내부에서 **스크립트를 실행 가능하게** 만드세요.

4.  마찬가지로 `docker exec`를 사용하여 컨테이너 내부에서 **스크립트를 실행**하세요. 스크립트가 `/tmp/container-info.txt`에 새 파일을 생성합니다.

5.  컨테이너에서 호스트의 현재 디렉토리로 **출력 파일** (`/tmp/container-info.txt`)을 **복사**하세요.

검증 스크립트가 이 `container-info.txt` 파일의 내용이 올바른지 확인할 것입니다.

**정리:** 완료되면 컨테이너를 중지하고 제거하세요: `docker stop c4-container && docker rm c4-container`.

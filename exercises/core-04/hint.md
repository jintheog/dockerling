Use this sequence of commands to solve the exercise.

1.  **Copy a file *into* a container:**
    The syntax is `docker cp <host-path> <container-name>:<container-path>`.
    ```bash
    docker cp run-inside-container.sh c4-container:/tmp/
    ```

2.  **Make the script executable:**
    You must use `docker exec` to run the `chmod` command inside the container.
    ```bash
    docker exec c4-container chmod +x /tmp/run-inside-container.sh
    ```

3.  **Execute the script:**
    Use `docker exec` again to run the script you just copied.
    ```bash
    docker exec c4-container /tmp/run-inside-container.sh
    ```

4.  **Copy the result file *out* of the container:**
    The syntax is `docker cp <container-name>:<container-path> <host-path>`.
    ```bash
    docker cp c4-container:/tmp/container-info.txt .
    ```

---

## 한국어

다음 순서의 명령어들을 사용하여 연습 문제를 해결하세요.

1.  **컨테이너 *안으로* 파일 복사:**
    구문은 `docker cp <호스트-경로> <컨테이너-이름>:<컨테이너-경로>`입니다.
    ```bash
    docker cp run-inside-container.sh c4-container:/tmp/
    ```

2.  **스크립트를 실행 가능하게 만들기:**
    `docker exec`를 사용하여 컨테이너 내부에서 `chmod` 명령을 실행해야 합니다.
    ```bash
    docker exec c4-container chmod +x /tmp/run-inside-container.sh
    ```

3.  **스크립트 실행:**
    다시 `docker exec`를 사용하여 방금 복사한 스크립트를 실행하세요.
    ```bash
    docker exec c4-container /tmp/run-inside-container.sh
    ```

4.  **컨테이너 *밖으로* 결과 파일 복사:**
    구문은 `docker cp <컨테이너-이름>:<컨테이너-경로> <호스트-경로>`입니다.
    ```bash
    docker cp c4-container:/tmp/container-info.txt .
    ```

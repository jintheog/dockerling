Here are the commands you'll need.

1.  **To create a network:**
    ```bash
    docker network create c10-network
    ```

2.  **To run a container on a specific network:**
    Use the `--network` flag in your `docker run` command.

    For the database container:
    ```bash
    docker run -d \
      --name c10-db \
      --network c10-network \
      -e POSTGRES_PASSWORD=mysecretpassword \
      postgres:14-alpine
    ```

    For the application container:
    ```bash
    docker run -d \
      --name c10-app \
      --network c10-network \
      busybox sleep 3600
    ```

Put these `docker run` commands into the `run-containers.sh` script.

---

## 한국어

다음은 필요한 명령어들입니다.

1.  **네트워크 생성:**
    ```bash
    docker network create c10-network
    ```

2.  **특정 네트워크에서 컨테이너 실행:**
    `docker run` 명령에서 `--network` 플래그를 사용하세요.

    데이터베이스 컨테이너의 경우:
    ```bash
    docker run -d \
      --name c10-db \
      --network c10-network \
      -e POSTGRES_PASSWORD=mysecretpassword \
      postgres:14-alpine
    ```

    애플리케이션 컨테이너의 경우:
    ```bash
    docker run -d \
      --name c10-app \
      --network c10-network \
      busybox sleep 3600
    ```

이 `docker run` 명령들을 `run-containers.sh` 스크립트에 넣으세요.

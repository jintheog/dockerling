Follow this sequence of commands to set up the persistent database.

1.  **Create the host directory:**
    ```bash
    mkdir pgdata
    ```

2.  **Run the first container instance:**
    The `-v "$(pwd)/pgdata:/var/lib/postgresql/data"` flag maps your new local directory into the container.
    ```bash
    docker run -d \
      --name c8-postgres \
      -e POSTGRES_PASSWORD=mysecretpassword \
      -v "$(pwd)/pgdata":/var/lib/postgresql/data \
      postgres:16
    ```
    *(Wait about 20 seconds for the database to initialize. Check its status with `docker logs c8-postgres`.)*

3.  **Create a table inside the database:**
    Use `docker exec` to run the `psql` command as the default `postgres` user.
    ```bash
    docker exec c8-postgres psql -U postgres -c "CREATE TABLE dvd_rentals (title TEXT);"
    ```

4.  **Insert the specific row of data:**
    ```bash
    docker exec c8-postgres psql -U postgres -c "INSERT INTO dvd_rentals (title) VALUES ('The Grand Budapest Hotel');"
    ```

---

### How to Verify for Yourself (The "Aha" Moment)

1.  **Destroy the container:**
    ```bash
    docker stop c8-postgres && docker rm c8-postgres
    ```

2.  **Run a new container instance on the same data:**
    ```bash
    docker run -d \
      --name c8-postgres \
      -e POSTGRES_PASSWORD=mysecretpassword \
      -v "$(pwd)/pgdata":/var/lib/postgresql/data \
      postgres:16
    ```
    *(Wait a few moments for it to start.)*

3.  **Check if your data is still there:**
    ```bash
    docker exec c8-postgres psql -U postgres -c "SELECT * FROM dvd_rentals;"
    ```

---

## 한국어

다음 명령어 순서를 따라 영구 데이터베이스를 설정하세요.

1.  **호스트 디렉토리 생성:**
    ```bash
    mkdir pgdata
    ```

2.  **첫 번째 컨테이너 인스턴스 실행:**
    `-v "$(pwd)/pgdata:/var/lib/postgresql/data"` 플래그가 새 로컬 디렉토리를 컨테이너에 매핑합니다.
    ```bash
    docker run -d \
      --name c8-postgres \
      -e POSTGRES_PASSWORD=mysecretpassword \
      -v "$(pwd)/pgdata":/var/lib/postgresql/data \
      postgres:16
    ```
    *(데이터베이스 초기화를 위해 약 20초 정도 기다리세요. `docker logs c8-postgres`로 상태를 확인할 수 있습니다.)*

3.  **데이터베이스 내부에 테이블 생성:**
    `docker exec`를 사용하여 기본 `postgres` 사용자로 `psql` 명령을 실행하세요.
    ```bash
    docker exec c8-postgres psql -U postgres -c "CREATE TABLE dvd_rentals (title TEXT);"
    ```

4.  **특정 데이터 행 삽입:**
    ```bash
    docker exec c8-postgres psql -U postgres -c "INSERT INTO dvd_rentals (title) VALUES ('The Grand Budapest Hotel');"
    ```

---

### 직접 확인하는 방법 ("아하" 순간)

1.  **컨테이너 삭제:**
    ```bash
    docker stop c8-postgres && docker rm c8-postgres
    ```

2.  **같은 데이터에 새 컨테이너 인스턴스 실행:**
    ```bash
    docker run -d \
      --name c8-postgres \
      -e POSTGRES_PASSWORD=mysecretpassword \
      -v "$(pwd)/pgdata":/var/lib/postgresql/data \
      postgres:16
    ```
    *(시작될 때까지 잠시 기다리세요.)*

3.  **데이터가 여전히 있는지 확인:**
    ```bash
    docker exec c8-postgres psql -U postgres -c "SELECT * FROM dvd_rentals;"
    ```

Directory: exercises/core-08

Containers are ephemeral, meaning any changes made inside them are lost when they are removed. For applications like databases, the data must persist. This exercise demonstrates how **volumes** solve this by linking a directory on your host machine to a directory inside the container.

## Your Task

Your task is to create a persistent PostgreSQL database. You will run a container, add data to it, remove the container, and then verify that the data is still safe on your host machine.

1.  **Create a directory** on your host machine named `pgdata`. This directory will hold your database files.
    ```bash
    mkdir pgdata
    ```

2.  **Run a `postgres:16` container**. Name it `c8-postgres` and use a volume to mount your `pgdata` directory to the container's data directory (`/var/lib/postgresql/data`).
    *(Wait 15-20 seconds for the database to initialize the first time).*

3.  **Create a table** using `docker exec` to run the `psql` client inside the container. The table should be named `dvd_rentals`.

4.  **Insert a row** into your new table. The row should contain the title `The Grand Budapest Hotel`.

### The "Aha" Moment (Highly Recommended)

This is the core concept of volumes. To see it in action:

1.  **Stop and remove the container**: `docker stop c8-postgres && docker rm c8-postgres`.
2.  Your container is gone, but the `pgdata` directory on your host remains.
3.  **Run a new container** using the *exact same `docker run` command* as before.
4.  **Verify your data**: `exec` into this new container and run `SELECT * FROM dvd_rentals;`. You will see the movie title you added earlier has reappeared!

### Final State

To complete the exercise, the checker needs to find the `pgdata` directory containing the database with the `dvd_rentals` table and the correct row. You can **leave the container running or stopped**, as the checker will only inspect the `pgdata` directory itself.

---

## 한국어

컨테이너는 휘발성입니다. 즉, 컨테이너 내부에서 변경한 내용은 컨테이너가 제거되면 사라집니다. 데이터베이스와 같은 애플리케이션의 경우 데이터가 지속되어야 합니다. 이 연습 문제에서는 **볼륨**이 호스트 머신의 디렉토리를 컨테이너 내부의 디렉토리에 연결하여 이 문제를 해결하는 방법을 보여줍니다.

## 과제

영구적인 PostgreSQL 데이터베이스를 만드는 것이 과제입니다. 컨테이너를 실행하고, 데이터를 추가하고, 컨테이너를 제거한 다음, 데이터가 호스트 머신에 여전히 안전하게 있는지 확인합니다.

1.  호스트 머신에 `pgdata`라는 이름의 **디렉토리를 생성**하세요. 이 디렉토리가 데이터베이스 파일을 보관합니다.
    ```bash
    mkdir pgdata
    ```

2.  **`postgres:16` 컨테이너를 실행**하세요. 이름을 `c8-postgres`로 지정하고 볼륨을 사용하여 `pgdata` 디렉토리를 컨테이너의 데이터 디렉토리 (`/var/lib/postgresql/data`)에 마운트하세요.
    *(처음에는 데이터베이스 초기화를 위해 15-20초 정도 기다리세요).*

3.  `docker exec`를 사용하여 컨테이너 내부에서 `psql` 클라이언트를 실행하여 **테이블을 생성**하세요. 테이블 이름은 `dvd_rentals`여야 합니다.

4.  새 테이블에 **행을 삽입**하세요. 행에는 `The Grand Budapest Hotel`이라는 제목이 포함되어야 합니다.

### "아하" 순간 (적극 권장)

이것이 볼륨의 핵심 개념입니다. 실제로 확인하려면:

1.  **컨테이너를 중지하고 제거**하세요: `docker stop c8-postgres && docker rm c8-postgres`.
2.  컨테이너는 사라졌지만, 호스트의 `pgdata` 디렉토리는 남아 있습니다.
3.  이전과 *똑같은 `docker run` 명령*을 사용하여 **새 컨테이너를 실행**하세요.
4.  **데이터를 확인**하세요: 이 새 컨테이너에 `exec`로 들어가서 `SELECT * FROM dvd_rentals;`를 실행하세요. 이전에 추가한 영화 제목이 다시 나타나는 것을 볼 수 있습니다!

### 최종 상태

연습 문제를 완료하려면, 검사기가 `dvd_rentals` 테이블과 올바른 행이 있는 데이터베이스가 포함된 `pgdata` 디렉토리를 찾아야 합니다. 검사기는 `pgdata` 디렉토리 자체만 검사하므로 **컨테이너를 실행 중이거나 중지된 상태로 둘 수 있습니다**.

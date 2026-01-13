Directory: exercises/core-14

You've successfully orchestrated a multi-service application. Now it's time to add robust data persistence and networking best practices using Docker Compose.

- **Named Volumes**: Unlike bind mounts, which depend on the host's directory structure, named volumes are managed by Docker itself. They are the preferred way to persist data for services like databases.
- **Custom Networks**: While Compose creates a default network, defining your own provides better isolation and organization, and allows for more complex network topologies.

## Your Task

Modify the `docker-compose.yml` from the previous exercise to include a named volume for Redis data and to place both services on a custom, user-defined network.

1.  **Define a top-level `networks` section** and create a network named `c14-app-net`.

2.  **Define a top-level `volumes` section** and create a named volume called `redis-data`.

3.  **Modify the `redis` service:**
    *   Give it the container name `c14-redis`.
    *   Connect it to the `c14-app-net` network.
    *   Mount the `redis-data` volume to the `/data` directory inside the container. This is where Redis stores its data.

4.  **Modify the `web` service:**
    *   Give it the container name `c14-web`.
    *   Connect it to the `c14-app-net` network.
    *   Map host port `8014` to container port `5000`.

The directory structure and application code are the same as in the previous exercise. You only need to create and modify the `docker-compose.yml` file.

---

## 한국어

멀티 서비스 애플리케이션을 성공적으로 조율했습니다. 이제 Docker Compose를 사용하여 강력한 데이터 지속성과 네트워킹 모범 사례를 추가할 시간입니다.

- **명명된 볼륨**: 호스트의 디렉토리 구조에 의존하는 바인드 마운트와 달리, 명명된 볼륨은 Docker 자체에서 관리합니다. 데이터베이스와 같은 서비스의 데이터를 유지하는 데 선호되는 방법입니다.
- **커스텀 네트워크**: Compose가 기본 네트워크를 생성하지만, 직접 정의하면 더 나은 격리와 조직을 제공하고 더 복잡한 네트워크 토폴로지가 가능합니다.

## 과제

이전 연습 문제의 `docker-compose.yml`을 수정하여 Redis 데이터용 명명된 볼륨을 포함하고 두 서비스를 커스텀 사용자 정의 네트워크에 배치하세요.

1.  **최상위 `networks` 섹션을 정의**하고 `c14-app-net`이라는 네트워크를 생성하세요.

2.  **최상위 `volumes` 섹션을 정의**하고 `redis-data`라는 명명된 볼륨을 생성하세요.

3.  **`redis` 서비스를 수정**하세요:
    *   컨테이너 이름을 `c14-redis`로 지정하세요.
    *   `c14-app-net` 네트워크에 연결하세요.
    *   `redis-data` 볼륨을 컨테이너 내부의 `/data` 디렉토리에 마운트하세요. 이곳이 Redis가 데이터를 저장하는 곳입니다.

4.  **`web` 서비스를 수정**하세요:
    *   컨테이너 이름을 `c14-web`으로 지정하세요.
    *   `c14-app-net` 네트워크에 연결하세요.
    *   호스트 포트 `8014`를 컨테이너 포트 `5000`에 매핑하세요.

디렉토리 구조와 애플리케이션 코드는 이전 연습 문제와 동일합니다. `docker-compose.yml` 파일만 생성하고 수정하면 됩니다.

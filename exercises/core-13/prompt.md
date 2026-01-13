Directory: exercises/core-13

The real power of Docker Compose is defining and running an entire application stack with multiple, interconnected services.

In this exercise, you will define a two-service application: a Python web app and a Redis cache. You will also use `depends_on` to tell Compose that the web app should not start until the Redis service has started. This helps control the startup order of your application stack.

## Your Task

Create a `docker-compose.yml` file that orchestrates the web app (provided in the `app` directory) and a Redis database.

Your `docker-compose.yml` file must define two services: `web` and `redis`.

1.  **The `redis` service:**
    *   Should use the `redis:alpine` image.
    *   Can be named `c13-redis` for clarity.

2.  **The `web` service:**
    *   Should be built from the `Dockerfile` in the `./app` directory.
    *   Should be named `c13-web`.
    *   Should map port `8013` on the host to port `5000` in the container.
    *   Must use `depends_on` to ensure it starts after the `redis` service.
    *   Must have an environment variable `REDIS_HOST` set to `redis`. This is how the Python app knows the hostname of the Redis service on the internal Docker network.

After creating the file, you can test it with `docker compose up --build`. The verification script will do this for you.

---

## 한국어

Docker Compose의 진정한 힘은 여러 개의 상호 연결된 서비스로 구성된 전체 애플리케이션 스택을 정의하고 실행하는 것입니다.

이 연습 문제에서는 Python 웹 앱과 Redis 캐시로 구성된 두 서비스 애플리케이션을 정의합니다. 또한 `depends_on`을 사용하여 Redis 서비스가 시작된 후에야 웹 앱이 시작되도록 Compose에 알려줍니다. 이는 애플리케이션 스택의 시작 순서를 제어하는 데 도움이 됩니다.

## 과제

웹 앱 (`app` 디렉토리에 제공됨)과 Redis 데이터베이스를 조율하는 `docker-compose.yml` 파일을 생성하세요.

`docker-compose.yml` 파일은 두 서비스를 정의해야 합니다: `web`과 `redis`.

1.  **`redis` 서비스:**
    *   `redis:alpine` 이미지를 사용해야 합니다.
    *   명확성을 위해 `c13-redis`로 이름 지정할 수 있습니다.

2.  **`web` 서비스:**
    *   `./app` 디렉토리의 `Dockerfile`에서 빌드해야 합니다.
    *   `c13-web`으로 이름 지정해야 합니다.
    *   호스트의 포트 `8013`을 컨테이너의 포트 `5000`에 매핑해야 합니다.
    *   `redis` 서비스 이후에 시작되도록 `depends_on`을 사용해야 합니다.
    *   환경 변수 `REDIS_HOST`를 `redis`로 설정해야 합니다. 이것이 Python 앱이 내부 Docker 네트워크에서 Redis 서비스의 호스트 이름을 알 수 있는 방법입니다.

파일을 생성한 후 `docker compose up --build`로 테스트할 수 있습니다. 검증 스크립트가 이를 대신 수행합니다.

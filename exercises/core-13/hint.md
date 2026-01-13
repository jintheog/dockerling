Your `docker-compose.yml` file will now have two top-level keys under `services`. You will also introduce the `build`, `environment`, and `depends_on` keys.

```yaml
services:
  # The web application service
  web:
    # Tells Compose to build an image from the Dockerfile in the 'app' directory
    build: ./app
    container_name: c13-web
    ports:
      - "8013:5000"
    # The app.py script will use this to connect to the redis service
    environment:
      - REDIS_HOST=redis
    # This ensures the redis service is started before the web service
    depends_on:
      - redis

  # The Redis database service
  redis:
    image: redis:alpine
    container_name: c13-redis
```

---

## 한국어

`docker-compose.yml` 파일은 이제 `services` 아래에 두 개의 최상위 키를 가집니다. 또한 `build`, `environment`, `depends_on` 키를 도입합니다.

```yaml
services:
  # 웹 애플리케이션 서비스
  web:
    # Compose에게 'app' 디렉토리의 Dockerfile에서 이미지를 빌드하라고 지시합니다
    build: ./app
    container_name: c13-web
    ports:
      - "8013:5000"
    # app.py 스크립트가 이것을 사용하여 redis 서비스에 연결합니다
    environment:
      - REDIS_HOST=redis
    # 이것은 web 서비스 전에 redis 서비스가 시작되도록 보장합니다
    depends_on:
      - redis

  # Redis 데이터베이스 서비스
  redis:
    image: redis:alpine
    container_name: c13-redis
```

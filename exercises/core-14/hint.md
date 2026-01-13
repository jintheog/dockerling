Your `docker-compose.yml` should now have top-level `volumes` and `networks` keys, in addition to the `services` key.

```yaml
# Define the custom network at the top level
networks:
  c14-app-net:

# Define the named volume at the top level
volumes:
  redis-data:

services:
  web:
    build: ./app
    container_name: c14-web
    ports:
      - "8014:5000"
    environment:
      - REDIS_HOST=redis
    depends_on:
      - redis
    # Connect this service to the network
    networks:
      - c14-app-net

  redis:
    image: redis:alpine
    container_name: c14-redis
    # Mount the named volume
    volumes:
      - redis-data:/data
    # Connect this service to the network
    networks:
      - c14-app-net
```
Note: The `redis:alpine` image is configured to automatically save its data to the `/data` directory. By mounting a volume there, we ensure the data persists.

---

## 한국어

`docker-compose.yml`은 이제 `services` 키 외에도 최상위 `volumes`와 `networks` 키를 가져야 합니다.

```yaml
# 최상위 레벨에서 커스텀 네트워크 정의
networks:
  c14-app-net:

# 최상위 레벨에서 명명된 볼륨 정의
volumes:
  redis-data:

services:
  web:
    build: ./app
    container_name: c14-web
    ports:
      - "8014:5000"
    environment:
      - REDIS_HOST=redis
    depends_on:
      - redis
    # 이 서비스를 네트워크에 연결
    networks:
      - c14-app-net

  redis:
    image: redis:alpine
    container_name: c14-redis
    # 명명된 볼륨 마운트
    volumes:
      - redis-data:/data
    # 이 서비스를 네트워크에 연결
    networks:
      - c14-app-net
```
참고: `redis:alpine` 이미지는 자동으로 데이터를 `/data` 디렉토리에 저장하도록 구성되어 있습니다. 거기에 볼륨을 마운트하면 데이터가 유지됩니다.

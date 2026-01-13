A `docker-compose.yml` file has a clear, hierarchical structure. Here is a template to get you started.

```yaml
services:
  # This is the logical name for your service.
  redis-server:
    # Specify the image to use.
    image: redis:alpine
    
    # Set a predictable name for the container.
    container_name: c12-redis
    
    # Define the port mappings.
    # The format is a list of "HOST:CONTAINER".
    ports:
      - "6379:6379"
```

---

## 한국어

`docker-compose.yml` 파일은 명확한 계층 구조를 가집니다. 다음은 시작하기 위한 템플릿입니다.

```yaml
services:
  # 서비스의 논리적 이름입니다.
  redis-server:
    # 사용할 이미지를 지정합니다.
    image: redis:alpine
    
    # 컨테이너의 예측 가능한 이름을 설정합니다.
    container_name: c12-redis
    
    # 포트 매핑을 정의합니다.
    # 형식은 "호스트:컨테이너" 목록입니다.
    ports:
      - "6379:6379"
```

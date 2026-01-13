1.  **In your Dockerfile:**
    The `EXPOSE` instruction simply takes the port number.
    ```Dockerfile
    EXPOSE 8080
    ```

2.  **On the command line:**
    The `-p` flag maps the host port to the container port.
    ```bash
    # Usage: docker run -d --name <container_name> -p <host_port>:<container_port> <image_name>
    
    docker run -d --name c11-server -p 8011:8080 c11-app
    ```

---

## 한국어

1.  **Dockerfile에서:**
    `EXPOSE` 명령은 단순히 포트 번호를 받습니다.
    ```Dockerfile
    EXPOSE 8080
    ```

2.  **명령줄에서:**
    `-p` 플래그가 호스트 포트를 컨테이너 포트에 매핑합니다.
    ```bash
    # 사용법: docker run -d --name <컨테이너_이름> -p <호스트_포트>:<컨테이너_포트> <이미지_이름>
    
    docker run -d --name c11-server -p 8011:8080 c11-app
    ```

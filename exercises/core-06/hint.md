Here are the `Dockerfile` instructions you'll need.

-   **`LABEL`**: Used to add key-value metadata. Use a unique key to avoid conflicts with the base image.
    ```Dockerfile
    LABEL org.dockerlings.author="your.name@example.com"
    ```

-   **`ENV`**: Sets an environment variable. The container process will inherit this variable.
    ```Dockerfile
    ENV PORT=8000
    ```

-   **`EXPOSE`**: It's good practice to document which port the application uses.
    ```Dockerfile
    EXPOSE 8000
    ```
-   **`CMD`**: The `app.py` script has been written to read the `PORT` from the environment variables, so you just need to execute the script.
    ```Dockerfile
    CMD ["python", "app.py"]
    ```

---

## 한국어

다음은 필요한 `Dockerfile` 명령어들입니다.

-   **`LABEL`**: 키-값 메타데이터를 추가하는 데 사용됩니다. 기본 이미지와의 충돌을 피하기 위해 고유한 키를 사용하세요.
    ```Dockerfile
    LABEL org.dockerlings.author="your.name@example.com"
    ```

-   **`ENV`**: 환경 변수를 설정합니다. 컨테이너 프로세스가 이 변수를 상속받습니다.
    ```Dockerfile
    ENV PORT=8000
    ```

-   **`EXPOSE`**: 애플리케이션이 사용하는 포트를 문서화하는 것이 좋은 관행입니다.
    ```Dockerfile
    EXPOSE 8000
    ```
-   **`CMD`**: `app.py` 스크립트는 환경 변수에서 `PORT`를 읽도록 작성되었으므로, 스크립트만 실행하면 됩니다.
    ```Dockerfile
    CMD ["python", "app.py"]
    ```

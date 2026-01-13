A `Dockerfile` is a sequence of instructions. Here are the key ones you'll need:

-   **`FROM python:3.9-slim`**: Specifies the starting image for your build.
-   **`WORKDIR /app`**: Sets the current directory for all subsequent commands (`COPY`, `RUN`, `CMD`).
-   **`COPY <source> <destination>`**: Copies files from your host into the image.
    *Tip: To optimize build caching, you should copy `requirements.txt` and run `pip install` *before* copying the rest of your application code.*
-   **`RUN <command>`**: Executes a command during the image build. This is used for installing dependencies.
    ```
    RUN pip install -r requirements.txt
    ```
-   **`EXPOSE 5000`**: Informs Docker that the application listens on this port. This is good practice for documentation.
-   **`CMD ["python", "app.py"]`**: Provides the default command to execute when the container starts. You should use the JSON array format for commands.

---

## 한국어

`Dockerfile`은 일련의 명령어입니다. 다음은 필요한 주요 명령어들입니다:

-   **`FROM python:3.9-slim`**: 빌드를 위한 시작 이미지를 지정합니다.
-   **`WORKDIR /app`**: 이후 모든 명령 (`COPY`, `RUN`, `CMD`)의 현재 디렉토리를 설정합니다.
-   **`COPY <소스> <대상>`**: 호스트에서 이미지로 파일을 복사합니다.
    *팁: 빌드 캐싱을 최적화하려면 나머지 애플리케이션 코드를 복사하기 *전에* `requirements.txt`를 복사하고 `pip install`을 실행해야 합니다.*
-   **`RUN <명령>`**: 이미지 빌드 중에 명령을 실행합니다. 의존성 설치에 사용됩니다.
    ```
    RUN pip install -r requirements.txt
    ```
-   **`EXPOSE 5000`**: 애플리케이션이 이 포트에서 수신 대기한다고 Docker에 알립니다. 문서화를 위한 좋은 관행입니다.
-   **`CMD ["python", "app.py"]`**: 컨테이너가 시작될 때 실행할 기본 명령을 제공합니다. 명령에는 JSON 배열 형식을 사용해야 합니다.

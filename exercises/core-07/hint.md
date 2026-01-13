To complete this exercise, you'll need to use the `COPY` instruction.

-   **`FROM <image>`**: Start your `Dockerfile` with a base image. A good choice is `nginx:stable-alpine` because it's small and efficient.
    ```Dockerfile
    FROM nginx:stable-alpine
    ```

-   **`COPY <source> <destination>`**: The syntax for copying is straightforward. The `<source>` is relative to your build context (the current directory), and the `<destination>` is an absolute path inside the image.
    ```Dockerfile
    # This copies the *contents* of the 'html' directory
    COPY html/ /usr/share/nginx/html/
    ```

**Note:** The trailing slash on the source (`html/`) is important. It tells Docker to copy the contents of the directory, not the directory itself.

---

## 한국어

이 연습 문제를 완료하려면 `COPY` 명령어를 사용해야 합니다.

-   **`FROM <이미지>`**: 기본 이미지로 `Dockerfile`을 시작합니다. `nginx:stable-alpine`은 작고 효율적이므로 좋은 선택입니다.
    ```Dockerfile
    FROM nginx:stable-alpine
    ```

-   **`COPY <소스> <대상>`**: 복사 구문은 간단합니다. `<소스>`는 빌드 컨텍스트(현재 디렉토리)에 대한 상대 경로이고, `<대상>`은 이미지 내부의 절대 경로입니다.
    ```Dockerfile
    # 'html' 디렉토리의 *내용*을 복사합니다
    COPY html/ /usr/share/nginx/html/
    ```

**참고:** 소스의 후행 슬래시 (`html/`)가 중요합니다. 이는 Docker에게 디렉토리 자체가 아닌 디렉토리의 내용을 복사하라고 지시합니다.

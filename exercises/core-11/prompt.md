Directory: exercises/core-11

A common point of confusion for beginners is the difference between `EXPOSE` in a `Dockerfile` and the `--publish` (or `-p`) flag used with `docker run`.

-   **`EXPOSE <port>`**: This is a documentation instruction. It signals to the person running the container which port the application inside is intended to listen on. It does **not** open the port or make it accessible from the host.

-   **`docker run -p <host_port>:<container_port>`**: This is a runtime instruction. It actively creates a network rule that maps traffic from a port on the host machine to a port inside the container.

## Your Task

Your task is to correctly document and run a web application container.

1.  **Modify the `Dockerfile`**. Inside the provided `Dockerfile`, add an `EXPOSE` instruction to document that the application listens on port **8080**.

2.  **Build your image**. Give it a tag like `c11-app`.
    ```bash
    docker build -t c11-app .
    ```

3.  **Run the container**.
    - Name the container `c11-server`.
    - Publish the exposed container port (`8080`) to port `8011` on your host machine.

**To complete the exercise, leave the container running.** The checker will inspect both your built image and the running container to ensure they are configured correctly.

---

## 한국어

초보자들이 흔히 혼동하는 부분은 `Dockerfile`의 `EXPOSE`와 `docker run`에서 사용하는 `--publish` (또는 `-p`) 플래그의 차이입니다.

-   **`EXPOSE <포트>`**: 이것은 문서화 명령입니다. 컨테이너를 실행하는 사람에게 내부 애플리케이션이 수신 대기하는 포트를 알려줍니다. 포트를 열거나 호스트에서 접근 가능하게 만들지는 **않습니다**.

-   **`docker run -p <호스트_포트>:<컨테이너_포트>`**: 이것은 런타임 명령입니다. 호스트 머신의 포트에서 컨테이너 내부의 포트로 트래픽을 매핑하는 네트워크 규칙을 적극적으로 생성합니다.

## 과제

웹 애플리케이션 컨테이너를 올바르게 문서화하고 실행하는 것이 과제입니다.

1.  **`Dockerfile`을 수정**하세요. 제공된 `Dockerfile` 내부에 애플리케이션이 포트 **8080**에서 수신 대기한다는 것을 문서화하는 `EXPOSE` 명령을 추가하세요.

2.  **이미지를 빌드**하세요. `c11-app`과 같은 태그를 지정하세요.
    ```bash
    docker build -t c11-app .
    ```

3.  **컨테이너를 실행**하세요.
    - 컨테이너 이름을 `c11-server`로 지정하세요.
    - 노출된 컨테이너 포트 (`8080`)를 호스트 머신의 포트 `8011`에 게시하세요.

**연습 문제를 완료하려면 컨테이너를 실행 상태로 두세요.** 검사기가 빌드된 이미지와 실행 중인 컨테이너 모두 올바르게 구성되었는지 검사합니다.

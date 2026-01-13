Directory: exercises/core-10

By default, containers can communicate with the outside world, but they have limited ability to discover and talk to each other. While you could link them, the modern and recommended approach is to use custom **bridge networks**.

When you place multiple containers on the same custom network, they get an internal DNS service that allows them to find and communicate with each other using their container names as hostnames. This is fundamental for building multi-service applications (e.g., a web server talking to a database).

## Your Task

Your task is to create a network and a script that launches two containers on that network.

1.  **Create a custom bridge network** and name it `c10-network`. You can do this as a one-time command in your terminal.

2.  **Edit the `run-containers.sh` script** provided in this directory. The script should perform the following actions:
    *   Run a `postgres:14-alpine` container named `c10-db`.
    *   Run a `busybox` container named `c10-app`.
    *   **Both** containers must be attached to the `c10-network` you created.
    *   The `busybox` container should be kept running with a long-running command like `sleep 3600`.

The verification script will execute your `run-containers.sh` script and then test if the `c10-app` container can successfully ping the `c10-db` container by its name.

---

## 한국어

기본적으로 컨테이너는 외부 세계와 통신할 수 있지만, 서로를 발견하고 통신하는 능력은 제한적입니다. 연결할 수도 있지만, 현대적이고 권장되는 접근 방식은 커스텀 **브릿지 네트워크**를 사용하는 것입니다.

여러 컨테이너를 같은 커스텀 네트워크에 배치하면, 컨테이너 이름을 호스트 이름으로 사용하여 서로를 찾고 통신할 수 있는 내부 DNS 서비스를 얻습니다. 이는 멀티 서비스 애플리케이션(예: 데이터베이스와 통신하는 웹 서버)을 구축하는 데 기본이 됩니다.

## 과제

네트워크를 생성하고 해당 네트워크에서 두 개의 컨테이너를 실행하는 스크립트를 작성하는 것이 과제입니다.

1.  **커스텀 브릿지 네트워크를 생성**하고 `c10-network`라고 이름 지정하세요. 터미널에서 일회성 명령으로 수행할 수 있습니다.

2.  이 디렉토리에 제공된 **`run-containers.sh` 스크립트를 편집**하세요. 스크립트는 다음 작업을 수행해야 합니다:
    *   `c10-db`라는 이름의 `postgres:14-alpine` 컨테이너를 실행합니다.
    *   `c10-app`이라는 이름의 `busybox` 컨테이너를 실행합니다.
    *   **두 컨테이너 모두** 생성한 `c10-network`에 연결되어야 합니다.
    *   `busybox` 컨테이너는 `sleep 3600`과 같은 장시간 실행 명령으로 계속 실행되어야 합니다.

검증 스크립트가 `run-containers.sh` 스크립트를 실행한 다음 `c10-app` 컨테이너가 이름으로 `c10-db` 컨테이너를 성공적으로 ping할 수 있는지 테스트합니다.

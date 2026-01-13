Directory: exercises/core-12

So far, you've been running containers using long `docker run` commands. This is fine for one or two containers, but it quickly becomes difficult to manage as applications grow.

**Docker Compose** is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application's services, networks, and volumes. Then, with a single command, you can create and start all the services from your configuration.

This is the standard way to manage local development environments.

## Your Task

Your task is to create a `docker-compose.yml` file in this directory to define a single Redis service.

Your `docker-compose.yml` file should define the following:
1.  A service named `redis-server`.
2.  The service should use the `redis:alpine` image.
3.  The container should be explicitly named `c12-redis`.
4.  It should map port `6379` on your host to port `6379` in the container.

After creating the file, you can test it yourself by running `docker compose up`. The verification script will run this command for you to check your work.

---

## 한국어

지금까지 긴 `docker run` 명령을 사용하여 컨테이너를 실행해 왔습니다. 컨테이너가 하나 또는 두 개일 때는 괜찮지만, 애플리케이션이 커지면 관리하기 어려워집니다.

**Docker Compose**는 멀티 컨테이너 Docker 애플리케이션을 정의하고 실행하는 도구입니다. Compose를 사용하면 YAML 파일로 애플리케이션의 서비스, 네트워크, 볼륨을 구성합니다. 그런 다음 단일 명령으로 구성에서 모든 서비스를 생성하고 시작할 수 있습니다.

이것이 로컬 개발 환경을 관리하는 표준 방법입니다.

## 과제

이 디렉토리에 단일 Redis 서비스를 정의하는 `docker-compose.yml` 파일을 생성하는 것이 과제입니다.

`docker-compose.yml` 파일은 다음을 정의해야 합니다:
1.  `redis-server`라는 이름의 서비스.
2.  서비스는 `redis:alpine` 이미지를 사용해야 합니다.
3.  컨테이너 이름은 명시적으로 `c12-redis`로 지정해야 합니다.
4.  호스트의 포트 `6379`를 컨테이너의 포트 `6379`에 매핑해야 합니다.

파일을 생성한 후 `docker compose up`을 실행하여 직접 테스트할 수 있습니다. 검증 스크립트가 이 명령을 실행하여 작업을 확인합니다.

Directory: exercises/core-09

Volumes are great for persisting data, but what about developing your application? You don't want to rebuild your image every time you change a single line of code.

This is where **bind mounts** come in. A bind mount links a directory or file from your host machine directly into a container. Any changes you make on the host are instantly reflected inside the container, making them perfect for live development workflows.

## Your Task

Your task is to run an `nginx` container and serve a simple static website from the `app` directory provided. The key is to use a bind mount so that changes to the website on your host machine are immediately live without restarting or rebuilding anything.

1.  **Examine the `app/index.html` file**. This is the file you will be serving.

2.  **Run an `nginx` container**.
    - Name it `c9-dev-server`.
    - Map host port `8009` to container port `80`.
    - **Crucially**, create a bind mount that maps the local `./app` directory to the Nginx web root directory inside the container (`/usr/share/nginx/html`). Make sure it's read-only to follow best practices for serving static content.

3.  **Verify it's working**. Once the container is running, check the content with `curl http://localhost:8009`. You should see the "Version 1" heading.

### Good Practice: Test the Live Reload

This is the core benefit of a bind mount. It's good practice to confirm your development setup is working as expected. To see it in action:

1.  Open the `app/index.html` file on your local machine in a text editor.
2.  Change the text inside the `<h1>` tag from "Version 1" to "My Live Update!".
3.  Save the file.
4.  Run `curl http://localhost:8009` again **without restarting the container**. You will see your new message served immediately from the container.

**To complete the exercise, leave the container running.** The checker will perform a similar test automatically to verify your solution.

---

## 한국어

볼륨은 데이터를 유지하는 데 좋지만, 애플리케이션을 개발할 때는 어떨까요? 코드 한 줄을 변경할 때마다 이미지를 다시 빌드하고 싶지는 않을 것입니다.

이때 **바인드 마운트**가 등장합니다. 바인드 마운트는 호스트 머신의 디렉토리나 파일을 컨테이너에 직접 연결합니다. 호스트에서 변경한 내용이 컨테이너 내부에 즉시 반영되어 실시간 개발 워크플로우에 완벽합니다.

## 과제

`nginx` 컨테이너를 실행하고 제공된 `app` 디렉토리에서 간단한 정적 웹사이트를 서비스하는 것이 과제입니다. 핵심은 바인드 마운트를 사용하여 호스트 머신에서 웹사이트를 변경하면 재시작이나 재빌드 없이 즉시 반영되도록 하는 것입니다.

1.  **`app/index.html` 파일을 확인**하세요. 이 파일이 서비스할 파일입니다.

2.  **`nginx` 컨테이너를 실행**하세요.
    - 이름을 `c9-dev-server`로 지정하세요.
    - 호스트 포트 `8009`를 컨테이너 포트 `80`에 매핑하세요.
    - **중요**: 로컬 `./app` 디렉토리를 컨테이너 내부의 Nginx 웹 루트 디렉토리 (`/usr/share/nginx/html`)에 매핑하는 바인드 마운트를 생성하세요. 정적 콘텐츠 서비스의 모범 사례를 따르기 위해 읽기 전용으로 만드세요.

3.  **작동을 확인**하세요. 컨테이너가 실행되면 `curl http://localhost:8009`로 내용을 확인하세요. "Version 1" 헤딩이 보여야 합니다.

### 좋은 관행: 실시간 리로드 테스트

이것이 바인드 마운트의 핵심 이점입니다. 개발 설정이 예상대로 작동하는지 확인하는 것이 좋은 관행입니다. 실제로 확인하려면:

1.  로컬 머신에서 텍스트 편집기로 `app/index.html` 파일을 여세요.
2.  `<h1>` 태그 안의 텍스트를 "Version 1"에서 "My Live Update!"로 변경하세요.
3.  파일을 저장하세요.
4.  **컨테이너를 재시작하지 않고** `curl http://localhost:8009`를 다시 실행하세요. 새 메시지가 컨테이너에서 즉시 서비스되는 것을 볼 수 있습니다.

**연습 문제를 완료하려면 컨테이너를 실행 상태로 두세요.** 검사기가 유사한 테스트를 자동으로 수행하여 솔루션을 확인합니다.

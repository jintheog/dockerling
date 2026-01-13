Use the following commands to complete the exercise:

- **To build an image:**
  `docker build -t <image-name> .`

- **To run a container in detached mode:**
  `docker run -d --name <container-name> <image-name>`

- **To get logs from a container:**
  `docker logs <container-name>`

- **To save output to a file (redirection):**
  `docker logs <container-name> > logs.txt`

Remember to stop and remove the container to keep your system clean:
`docker stop <container-name>`
`docker rm <container-name>`

---

## 한국어

다음 명령어들을 사용하여 연습 문제를 완료하세요:

- **이미지 빌드:**
  `docker build -t <이미지-이름> .`

- **분리 모드로 컨테이너 실행:**
  `docker run -d --name <컨테이너-이름> <이미지-이름>`

- **컨테이너에서 로그 가져오기:**
  `docker logs <컨테이너-이름>`

- **출력을 파일로 저장 (리다이렉션):**
  `docker logs <컨테이너-이름> > logs.txt`

시스템을 깔끔하게 유지하기 위해 컨테이너를 중지하고 제거하는 것을 잊지 마세요:
`docker stop <컨테이너-이름>`
`docker rm <컨테이너-이름>`

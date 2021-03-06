# docker-styleshare
styleshare store demo : docker compose managing database/django app/nginx

스타일쉐어 장바구니 구현하기 Project 의 Backend 를 쉽게 local 엣 deploy 할 수 있도록 구성된 Docker 관련 파일들입니다.

`docker` 와 `docker-compose` 를 이용해서 `django`, `nginx`, `database` 라는 세개의 서비스를 각각 하나의 컨테이너로 구동할 수 있습니다. 

외부에서는 `nginx` 서비스 컨테이너로 `localhost:80` 의 위치로 접근 가능합니다.

## Service 구성
### `django` 서비스 :  `Dockerfile-django`, `django-styleshare`
Django + REST API WAS Docker Image 를 구성합니다.

> `django` 서비스를 구성하는 자세한 코드나 로직은 [Django Styleshare Repository](https://github.com/shinjayne/django-styleshare) 에서 확인하실 수 있습니다! 

프론트에서 오는 다양한 RESTful 한 CRUD 요청을 처리합니다.

### `nginx` 서비스 :  `Dockerfile-nginx`, `nginx-settings` 
Nginx 서버 Image 를 구성합니다. Django 로 외부 Request 를 전달하는 Proxy 역할을 합니다.

### `database` 서비스 : `Dump.sql`
`Dump.sql` 엔 간단한 데이터 백업이 들어있습니다. `database` 서비스 컨테이너가 처음 생성될 때, 이 dump file 을 불러옵니다. DBMS 는 mysql 입니다.

[참고링크](https://hub.docker.com/_/mysql/)

## local 에 deploy
1. `docker CE` 를 설치합니다.  (https://docs.docker.com/docker-for-windows/install/) (https://docs.docker.com/docker-for-mac/install/)
2. `docker-compose` 를 설치합니다. (`docker CE` 설치할 때 보통 함께 설치됩니다.) (https://docs.docker.com/compose/install/#install-compose)
3. 현재 repository 를 `git clone` 받고, clone 받은 repository 의 root directory 로 이동합니다. (`docker-compose.yml` 이 존재하는 directory 입니다.)
4. `git clone https://github.com/shinjayne/django-styleshare.git` 을 실행해서 django 코드를 불러옵니다.
5. `docker-compose up -d` 혹은 `docker-compose up` 명령어를 실행합니다.
6. 조금 기다린 뒤 (30초~1분), 웹 브라우저에서 `localhost:80/admin` 에 접속하여 세 서비스가 문제없이 deploy 되었는지를 확인합니다.





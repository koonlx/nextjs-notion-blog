# 베이스 이미지 선택
FROM node:lts

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사
COPY package*.json ./

# 의존성 설치
RUN yarn install

# 애플리케이션 코드 복사
COPY . .

# Next.js 빌드
RUN yarn run build

# 앱 실행을 위한 포트 지정
EXPOSE 3000

# 애플리케이션 실행 명령어
CMD ["yarn", "start"]

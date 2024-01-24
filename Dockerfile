FROM node:18

WORKDIR /usr/src/app
ENV HOST=0.0.0.0
ENV PORT=1337
ENV APP_KEYS=sDH34pzkzX/3QWDZ8YlG1Q==,J61w/P0FZMRpzz40r3ZUJg==,l26uMVbsdE8WaT+mWkWZAA==,34uF7pXqWE+/j9jqTW9NyA==
ENV API_TOKEN_SALT=5AqSPdj3op1eDxzuxnDEPA==
ENV ADMIN_JWT_SECRET=Ya+u9lsVto9aSYx6mWgxhw==
ENV TRANSFER_TOKEN_SALT=5gMiGIg0JA+m/NG9FyFlhA==
# Database
ENV DATABASE_CLIENT=postgres
ENV DATABASE_URL=postgresql://thanigai:hSBrLPCgH5T7@ep-yellow-star-a15lbyh7.ap-southeast-1.aws.neon.tech/sandbox-db?sslmode=require
ENV JWT_SECRET=ia9D6SEZSE+GLwhtdS8DQA==
ENV NODE_ENV=production
COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000

CMD npm run start
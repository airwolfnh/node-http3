FROM node:9-slim
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/src/app
COPY . .
CMD ["npm", "start"]
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner N2NlZmYzNmY0NTkw --html

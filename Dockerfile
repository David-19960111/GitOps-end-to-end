FROM alpine:20-alpine 

WORKDIR /app 

COPY packege*.json ./ 

RUN npm install --only=production 

COPY . .      

EXPOSE 3000 

CMD [ "npm", "start" ]
FROM node:18-slim AS builder

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install --production

COPY . .

FROM node:18-alpine

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 3200

CMD ["npm", "start"]

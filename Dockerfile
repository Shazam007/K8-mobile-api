# Stage 1: Build Stage
FROM node:18-slim AS builder

WORKDIR /app

ARG service_name

RUN echo "Building service: $service_name"

COPY . .

RUN rm -rf ./services && mkdir -p ./services/$service_name

COPY ./services/$service_name ./services/$service_name

WORKDIR /app/services/$service_name

RUN npm install --production


# Stage 2: Production Stage

FROM node:18-alpine

ARG service_name

WORKDIR /app

COPY --from=builder /app /app

WORKDIR /app/services/$service_name

EXPOSE 3200

CMD ["npm", "start"]
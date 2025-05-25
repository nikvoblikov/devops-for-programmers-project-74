### Hexlet tests and linter status:
[![Actions Status](https://github.com/nikvoblikov/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/nikvoblikov/devops-for-programmers-project-74/actions)

![CI Status](https://github.com/nikvoblikov/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)

## Имя файла на docker-hub
Вы можете скачать образ по имени [nikover/devops-for-programmers-project-74](https://hub.docker.com/repository/docker/nikover/devops-for-programmers-project-74/general)

## Для старта
Требования
`Docker` + `Docker Compose` последней версии

Для деплоя: аккаунт на Docker Hub (для GitHub Actions).

## Структура проекта

├── .github/workflows/push.yml   # CI/CD
├── docker-compose.yml           # Основной конфиг
├── docker-compose.override.yml  # Dev-конфиг
├── Dockerfile                   # Dev-образ
├── Dockerfile.prod              # Prod-образ
├── Makefile                     # Управление задачами
├── app                          # Папка с приложением
└── services/caddy/Caddyfile     # Конфиг Caddy

## Локальный запуск (development)

Скопируйте репозиторий

```bash
git clone git@github.com:nikvoblikov/devops-for-programmers-project-74.git
cd devops-for-programmers-project-74
```

Запустите сервисы (app + Caddy + db):

```bash
make up
```

## Запуск тестов

Для запуска тестов выполните команду

```bash
make test
```

## Переменные окружения

Создайте файл `.env` и добавьте туда следующие переменные:

```
DATABASE_NAME=
DATABASE_USERNAME=
DATABASE_PASSWORD=
DATABASE_PORT=
DATABASE_HOST=
```
## Production-сборка

Выполняется командами:

```bash
# Собрать образ
docker build -f Dockerfile.prod -t your-image-name .

# Запустить
docker run -p 8080:8080 your-image-name
```

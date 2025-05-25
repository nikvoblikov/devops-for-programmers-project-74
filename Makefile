# Запуск приложения
up:
	docker compose up

# Установка зависимостей
setup:
	docker compose run --rm app make setup

# Запуск тестов
test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

# Остановка и очистка
down:
	docker compose down
# Запуск приложения
up:
	docker compose up

# Установка зависимостей
setup:
	docker compose run --rm app make install

# Запуск тестов
test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

# Остановка и очистка
down:
	docker compose down

# Создание  .env файла и примера
env:
	cp .env.example .env
	@echo "✅ .env created from .env.example"
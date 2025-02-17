# Використовуємо офіційний образ Python
FROM python:3.11

# Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# Копіюємо файли проєкту
COPY . .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Відкриваємо порт 3000
EXPOSE 3000

# Команда для запуску FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]

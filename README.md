# 📌 FastAPI Message App

Цей проєкт є простим веб-додатком на **FastAPI**, який дозволяє надсилати та переглядати повідомлення.  
Повідомлення зберігаються у файлі `storage/data.json`.  

🚀 **Реалізовано:**
- Веб-інтерфейс із формою для надсилання повідомлень.
- Збереження повідомлень у JSON-файл.
- Відображення всіх збережених повідомлень.
- Обробка статичних файлів (CSS, логотип).
- Обробка 404 (Not Found) сторінок.
- Запуск у **Docker-контейнері** з `docker-compose`.

---

## 🔹 **1. Клонування проєкту**
```sh
git clone https://github.com/jure-s/goit-pythonweb-hw-03.git
cd goit-pythonweb-hw-03
```

---

## 🔹 **2. Запуск без Docker (локально)**
1. **Створи віртуальне середовище (рекомендовано)**
   ```sh
   python -m venv venv
   source venv/bin/activate   # Для macOS/Linux
   venv\Scripts\activate      # Для Windows
   ```

2. **Встанови залежності**
   ```sh
   pip install -r requirements.txt
   ```

3. **Запусти FastAPI-сервер**
   ```sh
   python main.py
   ```

4. **Перевір у браузері:**
   - `http://127.0.0.1:3000/` → Головна сторінка.
   - `http://127.0.0.1:3000/message` → Форма для надсилання повідомлень.
   - `http://127.0.0.1:3000/read` → Перегляд збережених повідомлень.

---

## 🔹 **3. Запуск у Docker**
1. **Збери та запусти контейнер**
   ```sh
   docker-compose up --build
   ```
2. **Зупинити контейнер**
   ```sh
   docker-compose down
   ```

---

## 📌 **Структура проєкту**
```
goit-pythonweb-hw-03/
│
├── static/               # Статичні файли (CSS, зображення)
│   ├── style.css
│   ├── logo.png
│
├── templates/            # HTML-шаблони
│   ├── index.html
│   ├── message.html
│   ├── read.html
│   ├── error.html
│
├── storage/              # Файли для збереження даних
│   ├── data.json
│
├── .gitignore            # Ігнорує непотрібні файли у Git
├── Dockerfile            # Інструкції для створення Docker-образу
├── docker-compose.yml    # Файл конфігурації для Docker Compose
├── main.py               # Головний файл FastAPI-додатка
├── requirements.txt      # Список залежностей
├── README.md             # Цей файл
```

---

## 📌 **Опис завдання**
### ✅ **Функціонал веб-додатка:**
- Дві HTML-сторінки: `index.html` (головна) та `message.html` (форма).
- Статичні файли (`style.css`, `logo.png`).
- Обробка форми: отримання та збереження повідомлень у JSON-файл.
- Відображення збережених повідомлень у `read.html`.
- Обробка помилки `404 Not Found` (`error.html`).
- Запуск через `Docker` із збереженням даних у volume.

---

## 🚀 **Автор**
✍ **GitHub:** [jure-s](https://github.com/jure-s)  
📅 **Дата створення:** `2025-02-17`

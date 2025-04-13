# 🐘 PHP Learning Environment

Шаблон для изучения и разработки на PHP. Всё работает в контейнерах: **nginx + php 8.3 + mysql + phpMyAdmin + xdebug**.

---

## 🔧 Стек

- **PHP 8.3 (FPM)** — современный интерпретатор
- **Nginx (alpine)** — веб-сервер
- **MySQL 8** — база данных
- **phpMyAdmin** — веб-интерфейс для MySQL
- **Xdebug** — отладка через IDE
- **Composer** — менеджер зависимостей PHP

---

## 🚀 Быстрый старт

1. Установи [Docker](https://www.docker.com/)
2. Клонируй репозиторий:

    ```bash
    git clone https://github.com/username/php-learn-template.git
    cd php-learn-template
    ```

3. Запусти окружение:

    ```bash
    make up
    ```

4. Открой в браузере:

- Проект: [http://localhost:8080](http://localhost:8080)
- phpMyAdmin: [http://localhost:8081](http://localhost:8081)
    - Логин: `root`
    - Пароль: `root`

---

## 📦 Установленные PHP модули

- `pdo_mysql`, `mysqli`
- `mbstring`, `bcmath`, `exif`, `gd`, `pcntl`
- `xdebug`

---

## 📂 Структура проекта

project-root/
├── docker-compose.yml
├── Dockerfile
├── nginx.conf
├── Makefile
├── README.md
└── public/
└── index.php

---

## 🛠 Команды Makefile

| Команда         | Описание                              |
|-----------------|----------------------------------------|
| `make up`       | Поднять все контейнеры                 |
| `make down`     | Остановить контейнеры                 |
| `make build`    | Пересобрать образы                   |
| `make restart`  | Перезапуск с пересборкой              |
| `make logs`     | Просмотр логов                        |
| `make ps`       | Список контейнеров                    |
| `make bash`     | Войти в контейнер PHP                 |
| `make composer` | Установить зависимости через Composer |
| `make mysql`    | Открыть MySQL в консоли               |

---

## 🐞 Xdebug (отладка)

- Порт: `9003`
- Host: `localhost` или `host.docker.internal`
- PhpStorm:
    - Включить "Listen for PHP Debug Connections"
    - Установить точку останова
    - Отправить запрос в браузере

---

## 🧪 Быстрый тест

Файл `public/index.php`:

```php
<?php
phpinfo();
#!/bin/bash

# Скрипт для развертывания MMR Tracker Widget на GitHub Pages

echo "🚀 Развертывание MMR Tracker Widget..."

# Проверяем, что мы в правильной директории
if [ ! -f "index.html" ]; then
    echo "❌ Ошибка: файл index.html не найден!"
    echo "Убедитесь, что вы находитесь в правильной директории"
    exit 1
fi

# Инициализируем Git (если еще не инициализирован)
if [ ! -d ".git" ]; then
    echo "📦 Инициализируем Git репозиторий..."
    git init
    git branch -m main
fi

# Добавляем все файлы
echo "📁 Добавляем файлы..."
git add .

# Создаем коммит
echo "💾 Создаем коммит..."
git commit -m "Initial commit: MMR Tracker Widget"

# Запрашиваем URL репозитория
echo ""
echo "🔗 Введите URL вашего GitHub репозитория:"
echo "Пример: https://github.com/yourusername/mmr-tracker-widget.git"
read -p "URL: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ URL не может быть пустым!"
    exit 1
fi

# Добавляем remote origin
echo "🌐 Добавляем remote origin..."
git remote add origin "$REPO_URL" 2>/dev/null || git remote set-url origin "$REPO_URL"

# Пушим на GitHub
echo "⬆️  Загружаем на GitHub..."
git push -u origin main

echo ""
echo "✅ Развертывание завершено!"
echo ""
echo "📋 Следующие шаги:"
echo "1. Зайдите в ваш репозиторий на GitHub"
echo "2. Перейдите в Settings > Pages"
echo "3. Выберите 'Deploy from a branch'"
echo "4. Выберите ветку 'main' и папку '/ (root)'"
echo "5. Нажмите 'Save'"
echo ""
echo "🌐 Ваш сайт будет доступен через несколько минут по адресу:"
echo "https://ВАШЕ_ИМЯ.github.io/НАЗВАНИЕ_РЕПОЗИТОРИЯ/"
echo ""
echo "🎮 URL виджета для OBS:"
echo "https://ВАШЕ_ИМЯ.github.io/НАЗВАНИЕ_РЕПОЗИТОРИЯ/widget.html?player=ВАШ_НИКНЕЙМ" 
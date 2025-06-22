@echo off
chcp 65001 >nul
cls

echo 🚀 Развертывание MMR Tracker Widget...
echo.

REM Проверяем, что мы в правильной директории
if not exist "index.html" (
    echo ❌ Ошибка: файл index.html не найден!
    echo Убедитесь, что вы находитесь в правильной директории
    pause
    exit /b 1
)

REM Инициализируем Git (если еще не инициализирован)
if not exist ".git" (
    echo 📦 Инициализируем Git репозиторий...
    git init
    git branch -m main
)

REM Добавляем все файлы
echo 📁 Добавляем файлы...
git add .

REM Создаем коммит
echo 💾 Создаем коммит...
git commit -m "Initial commit: MMR Tracker Widget"

REM Запрашиваем URL репозитория
echo.
echo 🔗 Введите URL вашего GitHub репозитория:
echo Пример: https://github.com/yourusername/mmr-tracker-widget.git
set /p REPO_URL="URL: "

if "%REPO_URL%"=="" (
    echo ❌ URL не может быть пустым!
    pause
    exit /b 1
)

REM Добавляем remote origin
echo 🌐 Добавляем remote origin...
git remote add origin "%REPO_URL%" 2>nul || git remote set-url origin "%REPO_URL%"

REM Пушим на GitHub
echo ⬆️  Загружаем на GitHub...
git push -u origin main

echo.
echo ✅ Развертывание завершено!
echo.
echo 📋 Следующие шаги:
echo 1. Зайдите в ваш репозиторий на GitHub
echo 2. Перейдите в Settings ^> Pages
echo 3. Выберите 'Deploy from a branch'
echo 4. Выберите ветку 'main' и папку '/ (root)'
echo 5. Нажмите 'Save'
echo.
echo 🌐 Ваш сайт будет доступен через несколько минут по адресу:
echo https://ВАШЕ_ИМЯ.github.io/НАЗВАНИЕ_РЕПОЗИТОРИЯ/
echo.
echo 🎮 URL виджета для OBS:
echo https://ВАШЕ_ИМЯ.github.io/НАЗВАНИЕ_РЕПОЗИТОРИЯ/widget.html?player=ВАШ_НИКНЕЙМ
echo.
pause 
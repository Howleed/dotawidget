# 🎮 MMR Tracker Widget для OBS

Профессиональный веб-виджет для отображения MMR в OBS Studio с поддержкой Twitch интеграции и красивыми анимациями.

## 🌟 Возможности

- 🏆 **Автоматическое определение ранга** - Виджет показывает правильную иконку ранга на основе MMR
- 📊 **История матчей** - Отображение последних 10 результатов с цветовой кодировкой
- 📺 **Интеграция с Twitch** - Показывает количество зрителей в реальном времени
- 🎨 **Красивые анимации** - Плавные переходы и эффекты свечения
- ⚡ **Обновления в реальном времени** - Автоматическое обновление данных
- 🌐 **Веб-технологии** - Работает в любом браузере, включая OBS Browser Source

## 🚀 Быстрый старт

### Использование в OBS

1. **Откройте OBS Studio**
2. **Добавьте источник "Браузер"**
3. **Вставьте URL виджета:**
   ```
   https://yourusername.github.io/mmr-tracker-widget/widget.html?player=ВАШ_НИКНЕЙМ
   ```
4. **Установите размер:** 400x150 пикселей

### Настройка данных

Есть несколько способов подключить ваши данные:

#### Способ 1: URL параметры (для демонстрации)
```
https://yourusername.github.io/mmr-tracker-widget/widget.html?player=v1adlenn&mmr=6420
```

#### Способ 2: Файл mmr_data.json (для продакшена)
Разместите файл `mmr_data.json` на том же домене с вашими данными:

```json
{
  "mmr": 6420,
  "playerName": "v1adlenn",
  "matchResults": ["W", "W", "L", "W", "L", "W", "W", "L", "W", "W"]
}
```

## 📋 API

### URL Параметры

| Параметр | Описание | Пример |
|----------|----------|---------|
| `player` | Имя игрока | `?player=v1adlenn` |
| `mmr` | MMR для демонстрации | `?mmr=6420` |

### Формат данных mmr_data.json

```json
{
  "mmr": 6420,
  "playerName": "v1adlenn",
  "matchResults": ["W", "L", "W", "W", "L", "W", "W", "L", "W", "W"]
}
```

- `mmr` - Текущий MMR игрока (число)
- `playerName` - Имя игрока (строка)
- `matchResults` - Массив результатов последних 10 матчей ("W" = победа, "L" = поражение)

## 🏆 Ранги

Виджет автоматически определяет ранг на основе MMR:

- Herald: 1-769
- Guardian: 770-1539  
- Crusader: 1540-2309
- Archon: 2310-3079
- Legend: 3080-3849
- Ancient: 3850-4619
- Divine: 4620-5620
- Immortal: 5621+

## 🔧 Разработчикам

### Локальная разработка

1. Клонируйте репозиторий
2. Откройте `index.html` в браузере
3. Для тестирования виджета откройте `widget.html`

### Структура проекта

```
├── index.html          # Главная страница
├── widget.html         # Виджет для OBS
├── ranks/             # Иконки рангов
│   ├── herald.png
│   ├── guardian.png
│   └── ...
└── README.md          # Документация
```

### Настройка GitHub Pages

1. Зайдите в Settings репозитория
2. Прокрутите до раздела "Pages"
3. Выберите "Deploy from a branch"
4. Выберите ветку "main" и папку "/ (root)"
5. Нажмите "Save"

## 🎯 Примеры использования

### Основной виджет
```
https://yourusername.github.io/mmr-tracker-widget/widget.html?player=v1adlenn
```

### Демо с фиксированным MMR
```
https://yourusername.github.io/mmr-tracker-widget/widget.html?player=demo&mmr=6420
```

## 📱 Поддержка

Если у вас есть вопросы или предложения:

1. Создайте [Issue](https://github.com/yourusername/mmr-tracker-widget/issues)
2. Отправьте [Pull Request](https://github.com/yourusername/mmr-tracker-widget/pulls)

## 📄 Лицензия

MIT License - смотрите файл [LICENSE](LICENSE) для деталей.

## 🤝 Вклад в проект

Мы приветствуем вклад в развитие проекта! Пожалуйста:

1. Сделайте Fork репозитория
2. Создайте ветку для вашей фичи (`git checkout -b feature/AmazingFeature`)
3. Закоммитьте изменения (`git commit -m 'Add some AmazingFeature'`)
4. Отправьте в ветку (`git push origin feature/AmazingFeature`)
5. Откройте Pull Request

---

**Сделано с ❤️ для Dota 2 сообщества** 
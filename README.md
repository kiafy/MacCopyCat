# MacCopyCat
A macOS utility written in Swift that seamlessly captures screenshots copied to the clipboard. Ideal for automating screenshot workflows.

# Тестирование утилиты захвата скриншотов из буфера обмена

Ниже описаны шаги по тестированию утилиты, написанной на Swift, которая перехватывает скриншоты из буфера обмена. Процесс тестирования включает в себя создание тестового скриншота и проверку работы утилиты.

## Этап 1: Создание тестового скриншота с помощью командной строки

Для создания тестового скриншота воспользуемся стандартной утилитой macOS: `screencapture`.

1. **Открытие Терминала:** Запустите приложение "Терминал" на вашем macOS устройстве.
2. **Выполнение команды:** Введите следующую команду и нажмите Enter:

bash
  ```
  screencapture -i -c
  ```
Эта команда запустит инструмент захвата изображения (screencapture), в режиме выбора области (-i) и сохранит скриншот в файл (-c). После выполнения команды вы сможете выделить область экрана для создания скриншота. Сохраненный скриншот будет автоматически помещен в буфер обмена.


## Этап 2: Копирование скриншота в буфер обмена (альтернативный метод)

Если по какой-либо причине команда screencapture не работает или недоступна, или вы предпочитаете использовать другой способ создания скриншотов, выполните следующие действия:

1. Создание скриншота: Сделайте скриншот экрана любым удобным способом (например, сочетанием клавиш Shift-Command-3 или Shift-Command-4).
2. Копирование в буфер обмена: Убедитесь, что скриншот скопирован в буфер обмена (обычно это происходит автоматически после создания скриншота).


## Этап 3: Запуск утилиты захвата скриншотов

Теперь, когда тестовый скриншот находится в буфер обмена, запустим утилиту, написанную на Swift:

1. Компиляция кода: Убедитесь, что ваш проект screen_capture.swift скомпилирован и готов к запуску.
2. Запуск из терминала: Откройте терминал, перейдите в директорию с screen_capture.swift и выполните команду:

  ```
  swift run screen_capture
  ```



## Этап 4: Проверка результата

Проверьте результат работы утилиты. Это может включать в себя проверку:
• Сохраненного файла: Если утилита сохраняет скриншот в файл, убедитесь, что файл создан и содержит правильное изображение (по умолчанию из кода результат будет сохранен как /tmp/swift.png). 



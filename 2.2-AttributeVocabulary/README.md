### Словник атрибутів об’єктів

| Об’єкт            | Атрибут          | Короткий опис                                                   | Тип     | Обмеження |
|------------------|------------------|------------------------------------------------------------------|---------|-----------|
| User             | login            | Логін, який вводить користувач                                  | string  | обов’язковий |
| User             | password         | Пароль, що вводить користувач                                   | string  | обов’язковий |
| User             | region           | Регіон проживання користувача                                   | string  | обов’язковий |
| Authorization    | method           | Спосіб авторизації (логін/пароль або Google)                    | string  | перелік значень |
| AirQuality       | currentValue     | Поточний показник якості повітря                                | string  | — |
| AirQualityHistory| previousValues   | Історія змін рівня забруднення                                  | string  | може бути множина |
| Advice           | text             | Порада для користувача                                          | string  | — |
| Recommendation   | activityTips     | Рекомендації щодо фізичної активності                           | string  | — |
| Notification     | message          | Push-сповіщення, що отримує користувач                          | string  | — |
| VoiceCourse      | difficultyLevel  | Обраний рівень складності вокального курсу                      | string  | перелік значень |
| Training         | audioPlayback    | Аудіовідтворення тренування                                     | string  | — |
| Training         | pitchAccuracy    | Оцінка точності інтонації                                       | string  | — |
| GPSModule        | coordinates      | Геолокаційні координати користувача                             | string  | — |

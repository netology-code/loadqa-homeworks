## Домашнее задание к лекции 3 «Проведение нагрузочного веб-тестирования».

Любые вопросы по решению задач задавайте в чате учебной группы.

### Задание

1. Самостоятельно написать сценарий тестирования покупки билета и получения QR-кода.
2. Провести раунд тестирования.
3. Найти предел производительности сайта.

Сценарий:
1. Открыть [блог](https://qamidhl.herokuapp.com/).
2. Авторизоваться под пользователем:
    qamidl1/ ******.
3. Открыть [пост](https://qamidhl.herokuapp.com/?p=1).
4. Добавить комментарий, заполнив поле `Comment`.

### Инструменты для выполнения домашнего

#### 1. Работа с BlazeMeter:

    1. Зарегистрироваться на сайте `BlazeMeter`.
    2. Записать тест с помощью системы `BlazeMeter`.
    3. Проиграть скрипт в системе `BlazeMeter`.
    4. Прислать скриншоты получившейся нагрузки.
    
#### 2.  Работа с `JMeter`:

    1. Склонировать репозиторий с сайтом кинотеатра.
    
    git clone https://github.com/mshegolev/congenial-potato.git
    cd congenial-potato

    2. Запустить сайт кинотеатра.
    
    cd cinema
    docker-compose up -d

    3. Убедиться, что сайт кинотеатра доступен [по ссылке](http://localhost:8000/).
    4. Написать тест в JMeter по открытию [сайта](http://localhost:8000/).
    5. Запустить тест для одного пользователя.
    6. Сделать скриншот о выполнении сценария с помощью `View Results Tree`.
    7. Сделать скриншот стандартного отчёта JMeter о проведённом тестировании.
    
#### 3.  Работа с `JMeter`

    1. Настроить запись метрик в систему мониторинга.
    2. Запустить тест по разработанному профилю нагрузки.
    3. Сделать скриншот полученных результатов из системы монитронига.

#### 4.  Отправка задания на проверку

   Нужно запушить репозиторий с конфигурацией, дашбордами и скриншотами на GitHub и отправить на проверку ссылку на репозиторий.

### Дополнительная информация
1. [Инструкция по работе с `BlazeMeter`](https://www.blazemeter.com/).
2. [BlazeMeter Chrome extention](https://chrome.google.com/webstore/detail/blazemeter-the-continuous/mbopgmdnpcbohhpnfglgohlbhfongabi) — расширение Chrome browser для записи тестов c помощью `BlazeMeter`.
3. [Инструкция по работе с `JMeter`](https://jmeter.apache.org/).
4. [JMeter Test Script Recorder](https://jmeter.apache.org/usermanual/jmeter_proxy_step_by_step.html) — инструкция по записи тестов с помощью `JMeter`.
5. [Download JMeter](https://jmeter.apache.org/download_jmeter.cgi) — дистрибутивы `JMeter`.
6. [Install plugin](https://jmeter-plugins.org/wiki/PluginsManager/) — установка плагинов в `JMeter`.


<details>
  <summary>Подсказка.</summary>

  Используйте примеры из папки [./jmeter](./jmeter) для запуска теста.
  Если возникнут трудности при установке, используйте инструкцию install_influxdb_jmeter.docx в папке JMeter.
</details>


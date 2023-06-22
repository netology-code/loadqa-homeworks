## Домашнее задание к лекции 3 "Проведение нагрузочного тестирования WEB".

Любые вопросы по решению задач задавайте в чате учебной группы.

### Задание:

* Необходимо самостоятельно написать сценарий тестирования покупки билета и получение QR кода.

* Провести раунд тестирования.

* Найти предел производительности сайта.


Провести раунд тестирования.
Найти предел производительности сайта.
Сценарий:
1. Открыть блог [http://cw24054-wordpress-zu0z0.tw1.ru/](http://cw24054-wordpress-zu0z0.tw1.ru/)
2. Авторизоваться под пользователем:
    qamidl1/ S6pJwG(7uCeH@A!F1IpJoDat
3. Открыть пост [Привет Мир!](http://cw24054-wordpress-zu0z0.tw1.ru/2022/12/11/%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80/)
4. Добавить комментарий заполнив поле Comment

### В рамках домашнего задания вам нужно:

#### 1. Работа с `blazemeter`:
    - зарегистрироваться на сайте `blazemeter`
    - записать тест с помощью системы `blazemeter`
    - проиграть скрипт в системе `blazemeter`
    - прислать скриншоты получившейся нагрузки
#### 2.  Работа с `jmeter`:
    - склонировать репозиторий с сайтом блога
    ```
    git clone https://github.com/mshegolev/congenial-potato.git
    cd congenial-potato

    ```
    - Запустить сайт wordpress и установить его см. инструкцию по установке 
    ```
    cd wp
    docker-compose up -d

    ```
    - Убедиться что сайнт блога доступен открыв ссылку http://localhost/
    - Написать тест в Jmeter по открытию сайта http://localhost/
    - Запустить тест для 1 пользователя
    - Сделать скриншот о выполнении сценария с помощью `View Results Tree`
    - Сделать скриншот стандартного отчета jmeter о проведенном тестировании
#### 3.  Работа с `jmeter` (задание со звездочкой):   
    - Настроить запись метрик в систему мониторинга
    - Запустить тест в соответствии с разработанным профилем нагрузки
    - Сделать скриншот полученных результатов из системы монитронига
#### 4.  Для проверки:
    - запушить репозиторий с конфигурацией, дашбордами и скриншотами на github;
    - ссылку на репозиторий отправить на проверку.
### Дополнительная информация
- https://www.blazemeter.com/ - инструкция по работе с `blazemeter`;
- [Blazemeter chrome extention](https://chrome.google.com/webstore/detail/blazemeter-the-continuous/mbopgmdnpcbohhpnfglgohlbhfongabi) - расширение Chrome browser для записи тестов c помощью `blazemeter`
- https://jmeter.apache.org/ - инструкция по работе с `jmeter`;
- [Jmeter Test Script Recorder](https://jmeter.apache.org/usermanual/jmeter_proxy_step_by_step.html) - инструкция по записи тестов с помощью `jmeter`
- [Download jmeter](https://jmeter.apache.org/download_jmeter.cgi) - дистрибутивы `jmeter`
- [Install plugin](https://jmeter-plugins.org/wiki/PluginsManager/) - установка плагинов в `jmeter`


<details>
  <summary>Подсказка</summary>

  Используйте примеры из  папки [./jmeter](./jmeter) для запуска теста.
  Если не получилось установить или что-то пошло не так. То вы сможете воспользоваться инструкцией install_influxdb_jmeter.docx в папке jmeter.
</details>

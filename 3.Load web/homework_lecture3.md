## Домашнее задание к лекции 3 "Проведение нагрузочного тестирования WEB".

Любые вопросы по решению задач задавайте в чате учебной группы.

### Задание:

* Провести раунд тестирования добавления комментария
* Необходимо самостоятельно написать сценарий тестирования покупки билета и получение QR кода.
* Сохранить результаты тестирования


Провести раунд тестирования добавления комментария.

Сценарий:
1. Открыть блог [http://cw24054-wordpress-zu0z0.tw1.ru/](http://cw24054-wordpress-zu0z0.tw1.ru/)
2. Перейти на страницу добавления комментария [Привет, Мир!](https://cw24054-wordpress-zu0z0.tw1.ru/2022/12/11/привет-мир/)
2. Добавить комментарий, заполнив поле Comment

### В рамках домашнего задания вам нужно:

#### 1. Работа с `blazemeter`:
- зарегистрироваться на сайте [blazemeter](https://www.blazemeter.com/)
- установить плагин [blazemeter](https://chromewebstore.google.com/detail/mbopgmdnpcbohhpnfglgohlbhfongabi?hl=ru&utm_source=ext_sidebar)
- записать тест добавления комментария с помощью системы `blazemeter`
- проиграть скрипт добавления комментария в системе `blazemeter`
- прислать скриншоты получившейся нагрузки
  
#### 2.  Работа с `jmeter`:
   - склонировать репозиторий с сайтом кинотеатра
    ```bash
    git clone https://github.com/mshegolev/congenial-potato.git

    cd congenial-potato
    ```
    
- Запустить сайт cinema_web и установить его [см. инструкцию по установке](https://github.com/mshegolev/congenial-potato/)

    ```bash   
    cd cinema
    
    docker-compose up -d
    ```
- Убедиться что сайт кинотеатра доступен по ссылке http://localhost:8000/
- Написать тест в Jmeter по открытию сайта http://localhost:8000/ и получению QR-кода билета
- Запустить тест для 1 пользователя
- Сделать скриншот о выполнении сценария с помощью `View Results Tree`
- Сделать скриншот стандартного отчета jmeter о проведенном тестировании
    ```bash
    jmeter -n -t <test JMX file> -l <test log file> -e -o <Path to output folder>
    ```
#### 3.  Работа с `jmeter` (задание со звездочкой):   
- Настроить запись метрик в систему мониторинга (любой стэк)
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

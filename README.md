# nextcloud+postgresql_Adminer

1.Необходимо склонировать репозиторий
2.Сборка включает в себя nextcloud+posgresql+adminer, в отдельной сети.
3.Для установки необходимо сделать исполняемыми скрипты: nextcloud.sh и createdb2.sh и запустить скрипт nextcloud.sh
4.После установки контейнеров, для дальнейшей настройки необходимо перейти, по ip адресу, на котором была произведена установка контейнеров и порту 8080.
5.Водим учетные данные и пользователя, которому предоставлены права на базу:
Учетная запись база данных: nextcloud
Пароль к базе данных: Aa123456
Имя базы: nextcloud
Хост базы данных: на котором установлен контейнер с postgresql
Скрипт remove-nextcloud.sh удаляет все контейнеры, созданные директории и виртуальную сеть.
Данные будут находиться в локальной папке пользователя, от которого был запущен скрипт установки.


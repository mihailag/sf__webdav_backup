Bash-скрипт, который сжимает нужный каталог в ахрив и загружает его по webdav на указанный вами сервер.

### Использование

Создать .env файл, указать данные для подключения, например:
```
USERNAME='youname'
PASSWORD='youpassword'
SERVER='https://webdav.yandex.ru'
```

Запустить скрипт, указав каталог:
```
./backup.sh source_dir
```
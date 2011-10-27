# language: ru
Функционал: Фильмы
  Чтобы видеть список фильмов
  Как посетитель сайта
  Я должен иметь возможность видеть список фильмов

  Предыстория:
    Допустим на сайте зарегистрированы:
      | user    | email              | password | roles            |
      | everzet | ever.zet@gmail.com | qwerty   | ROLE_SUPER_ADMIN |
      | pilot   | pilot@gmail.com    | god      | ROLE_USER        |
    И на сайт добавлены жанры:
      | name      |
      | adventure |
      | comedy    |
    И на сайт добавлены фильмы:
      | name          | length | country | premiere   | description    | author  |
      | Puss in Boots | 90     | US      | 28.10.2011 | Story bout cat | everzet |
      | In Time       | 109    | US      | 27.10.2011 | In future...   | pilot   |

  Сценарий: Список фильмов
    Если я на странице "/"
    То я должен видеть "Puss in Boots"
    И я должен видеть "In Time"

  Сценарий: Просмотр информации о фильме
    Допустим я на странице "/"
    Если я кликаю по ссылке "Puss in Boots"
    То я должен видеть "Length: 90 min."
    И я должен видеть "Premiere: 10.28.2011"
    И должен видеть "Story bout cat"

  Сценарий: Ссылка на создание нового фильма
    Допустим я на странице "/"
    Если я вхожу как пользователь "pilot" с паролем "god"
    И кликаю по ссылке "(+) add new"
    То я должен быть на странице "/new"

  Сценарий: Создание нового фильма
    Допустим я на странице "/new"
    И я вхожу как пользователь "pilot" с паролем "god"
    Когда я ввожу "A Dangerous Method" в поле "Name (en)"
    И я ввожу "Carl Jung and Sigmund Freud" в поле "Description (en)"
    И ввожу "120" в поле "Length (minutes)"
    И выбираю "US" в поле "Country"
    И нажимаю "Create"
    То я должен видеть "A Dangerous Method"
    И я должен видеть "(edit)"


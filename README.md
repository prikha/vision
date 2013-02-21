= Vision
== Install it using Gemfile

Ставим: gem 'vision', :git=>'git://github.com/prikha/vision.git'
Запускаем генератор
 rails g vision:install
Для любого ресурса можно создать административный контроллер
 rails g vision:resource resource_name
 rails g vision:resource user 

Если нужно переписать вьюхи, то
 rails g vision:views resource_name
 rails g vision:views user

Админка доступна по адресу /vision и резервирует под себя этот путь включая vision_path


Из того что необходимо сделать и ОЧЕНЬ ВАЖНО для работоспособности админки:
Описание и попадение в rubygems
ТЕСТЫ на гем и генераторы
Сделать рабочее dummy_app для тестирования
генератор на обычный контроллер и вьюхи (не inherited resources)
Система работы как с обычнми гемами: fork->change->test->pull request



This project rocks and uses MIT-LICENSE.

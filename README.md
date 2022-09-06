# laravel











composer create-project laravel/laravel avored-backend
cd avored-backend
composer require avored/framework
composer require avored/dummy-data
composer require avored/cash-on-delivery
composer require avored/pickup



wget https://getcomposer.org/download/latest-stable/composer.phar -O composer
php composer create-project aimeos/aimeos:~2021.10 myshop

 composer install
cp .env.example .env
Set up .env file
 php artisan key:generate
 php artisan storage:link
 php artisan migrate:fresh --seed
 php artisan serve
http://127.0.0.1:8000/


composer install
npm install
php artisan key:generate
php artisan migrate
php artisan db:seed
gulp
php artisan serve

# laravel





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

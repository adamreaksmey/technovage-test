frontend
---
vue 3, <br />
npm install, <br />
create your .env, <br />
put this below: <br />
VITE_APP_API_URL="YOUR-API-URL" <br />
npm run dev

backend
---
please run this below in your backend folder:<br />
composer install

create a .env file, <br />
copy everything in the .env.example file, <br />
and paste it in your newly created .env file, <br />
don't forget to change the database name

DB_DATABASE=laravel #change it to your database name

then run below ( backend ):
---
php artisan migrate <br />
php artisan jwt:secret <br />
php artisan serve


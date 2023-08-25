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
please run this below in your backend folder:
composer install

then put this below in your .env file.

JWT_SECRET="" <br />
JWT_ALGO="" <br />

then run below ( backend ):
---
php artisan migrate <br />
php artisan jwt:secret <br />
php artisan serve


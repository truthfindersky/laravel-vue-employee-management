1. Environment Setup:

composer create-project laravel/laravel .
composer require laravel/ui
php artisan ui bootstrap --auth
php artisan ui vue
npm install

npm run dev
php artisan serve


2. Model & Migration

.env

php artisan make:model Country -m
php artisan make:model State -m
php artisan make:model City -m
php artisan make:model Department -m
php artisan make:model Employee -m

php artisan migrate

3. Resgistration and Login

register.blade.php
RegisterController.php
User.php
app.blade.php
login.blade.php

4. Template Mastering

main.blade.php
header.blade.php
sidebar.blade.php
footer.blade.php
dashboard.blade.php

5. Authentication

LoginController.php
protected $maxAttempts = 3; // Default is 5
protected $decayMinutes = 5; // Default is 1

6. Users

php artisan make:controller Backend/UserController --resource
php artisan make:request  UserStoreRequest
php artisan make:request  UserUpdateRequest
php artisan make:controller Backend/ChangePasswordController

7. System Management

Country
php artisan make:controller Backend/CountryController --resource
php artisan make:request  CountryStoreRequest
php artisan make:request  CountryUpdateRequest

State
php artisan make:controller Backend/StateController --resource
php artisan make:request  StateStoreRequest

City
php artisan make:controller Backend/CityController --resource
php artisan make:request  CityStoreRequest

Department
php artisan make:controller Backend/DepartmentController --resource
php artisan make:request  DepartmentStoreRequest

8. Employee Management
php artisan make:controller Api/EmployeeController --resource

Vue
npm install vue@next vue-loader@next
npm install @vitejs/plugin-vue

npm run build

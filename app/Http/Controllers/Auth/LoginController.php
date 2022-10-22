<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{

    use AuthenticatesUsers;

    protected $redirectTo = RouteServiceProvider::HOME;
    protected $maxAttempts = 3; // Default is 5
    protected $decayMinutes = 5; // Default is 1

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}

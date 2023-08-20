<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function __construct(private Request $request)
    {
    }

    public function login()
    {
        $email = $this->request->email;
        $password = $this->request->password;
        if (Auth::attempt(['email' => $email, 'password' => $password])) {
            $user = Auth::user();
            $token = $user->createToken('auth-token')->plainTextToken;
            return response()->json([
                'token' => $token
            ]);
        }
        return response()->json(['error' => 'Invalid email or password'], 401);
    }

    public function test()
    {
        return response()->json([
            'message' => 'you are in'
        ]);
    }
}

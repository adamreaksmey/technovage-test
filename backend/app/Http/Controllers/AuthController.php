<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class AuthController extends Controller
{
    public function __construct(private Request $request, private User $user)
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

    public function authorized()
    {
        return response()->json([
            "authenticated" => Auth::user()
        ]);
    }
}

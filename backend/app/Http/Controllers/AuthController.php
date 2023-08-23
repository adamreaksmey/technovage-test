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
        $credentials = $this->request->only('email', 'password');
        $token = Auth::attempt($credentials);
        if (!$token) {
            return response()->json([
                'status' => 'error',
                'message' => 'unauthorized'
            ], 401);
        }

        $user = Auth::user();
        return response()->json([
            'status' => 'success',
            'user' => $user,
            'token' => $token
        ]);
    }

    public function authorized()
    {
        return response()->json([
            "authenticated" => Auth::user()
        ]);
    }
}

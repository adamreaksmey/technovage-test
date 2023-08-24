<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UsersController extends Controller
{
    public function __construct(private User $user, private Request $request)
    {
    }

    public function index()
    {
        return $this->user->get();
    }

    public function update()
    {
        $id = $this->request->id;
        $form = $this->request->form;
        return $form;
    }

    public function store()
    {
    }

    public function delete()
    {
        $id = $this->request->id;
        return $id;
        $data = $this->user->where('id', $id)->delete();
        return $data;
    }
}

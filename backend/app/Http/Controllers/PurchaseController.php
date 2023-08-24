<?php

namespace App\Http\Controllers;

use App\Models\Purchases;
use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    public function __construct(private Request $request, private Purchases $purchase)
    {
    }

    public function index()
    {
        $data = $this->purchase->get();
        return $data;
    }

    public function store()
    {
        $form = $this->request->form;
        return $form;
    }

    public function update()
    {
        $id = $this->request->id;
        $form = $this->request->form;
        return response()->json([
            "id" => $id,
            "form" => $form
        ]);
    }

    public function delete()
    {
        $id = $this->request->id;
        return $id;
    }
}

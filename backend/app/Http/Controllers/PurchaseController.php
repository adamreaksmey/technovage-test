<?php

namespace App\Http\Controllers;

use App\Models\Purchases;
use Illuminate\Http\Request;
use App\Http\Resources\PurchaseResource;

class PurchaseController extends Controller
{
    public function __construct(private Request $request, private Purchases $purchase)
    {
    }

    public function index()
    {
        $data = $this->purchase->get();
        return PurchaseResource::collection($data);
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

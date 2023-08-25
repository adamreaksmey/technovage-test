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
        $data = $this->purchase->paginate(5);
        return PurchaseResource::collection($data);
    }

    public function store()
    {
        $form = $this->request->form;
        return $form;
    }

    public function show($id)
    {
        $data = $this->purchase->where('id', $id)->with('user')->first();
        return $data;
    }

    public function update($id)
    {
        $amount = $this->request->data['amount'];
        $this->purchase->where("id", $id)->update([
            "amount" => $amount
        ]);
        $updatedData = $this->purchase->where('id', $id)->with('user')->first();

        return $updatedData;
    }

    public function delete()
    {
        $id = $this->request->id;
        return $id;
    }
}

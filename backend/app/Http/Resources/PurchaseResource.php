<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PurchaseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "customer_id" => $this->customer_id,
            "amount" => $this->amount,
            "created_at" => Carbon::parse($this->created_at)->format('Y-m-d H:i:s')
        ];
    }
}

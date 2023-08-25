<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\PurchaseResource;

class UsersResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $score = floor($this->getScore() / 10);
        return [
            "id" => $this->id,
            "name" => $this->name,
            "email" => $this->email,
            "created_at" => $this->created_at,
            "phone" => $this->phone_number,
            "address" => $this->address,
            "score" => round($score, 2),
            "registration_date" => $this->registration_date,
            "purchases" => PurchaseResource::collection($this->purchases)
        ];
    }

    private function getScore()
    {
        $sum = 0;
        foreach ($this->purchases as $key => $purchase) {
            $sum += $purchase->amount;
        }
        return $sum;
    }
}

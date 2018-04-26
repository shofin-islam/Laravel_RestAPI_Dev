<?php

namespace App\Http\Resources\Brand;

use Illuminate\Http\Resources\Json\JsonResource;

class BrandResource extends JsonResource
{
     
    public function toArray($request)
    {
        return [
            'id'=> $this->id,
            'Name'=> $this->Name
        ];
    }
}


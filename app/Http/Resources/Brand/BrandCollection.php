<?php

namespace App\Http\Resources\Brand;

use Illuminate\Http\Resources\Json\Resource;

class BrandCollection extends Resource
{
    public function toArray($request)
    {
        return [
            'id'=> $this->id,
            'Name'=> $this->Name
        ];
    }
}

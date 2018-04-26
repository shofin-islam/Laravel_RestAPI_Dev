<?php

namespace App\Http\Resources\Assign;

use Illuminate\Http\Resources\Json\JsonResource;

class AssignResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
//        echo '<pre>';
//        print_r($this->assignto);
//        exit();
        return [
            'id'=>$this->id,
            'job_request_id'=> $this->job_request_id,
            'AssignTo'=> $this->assignto,
            'TechnicalInput'=> $this->TechnicalInput,
            'AssignedBy'=> $this->assignedby,
            'href'=>[
                'Request Info'=>Route('JobRequests.show',$this->job_request_id)
            ]
        ];
    }
}

<?php

namespace App\Http\Resources\JobRequest;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Assign;

class JobRequestResource extends JsonResource {

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request) {
        
        $assignInfo = $this->assign;
        
        if (count($assignInfo)>0) {
            foreach ($assignInfo as $ai) {
                $assignToEmp[] = \App\Employee::where('id', $ai->AssignTo)->first();
                $assignedByEmp[] = \App\Employee::where('id', $ai->AssignedBy)->first();
            }
        }else{
           $assignToEmp=null;
           $assignedByEmp=null;
        }

        return [
            'ServiceItem' => $this->ServiceItem,
            'ServiceType' => ($this->RequestType === 1) ? 'Web' : (($this->RequestType === 2) ? 'Home' : 'Guest'),
            'Description' => $this->ProblemDescription,
//            'ExpectedDate'=>$this->ExpectedDate,
            'Brand' => $this->brand->Name,
            'DeviceQty' => $this->DeviceQty,
            'CompletionDate' => $this->ProbableCompletionDate,
            'CreatedBy' => $this->ReqCreatedBy,
            'RequestNote' => $this->RequestNote,
//            'AssignInfo'=>$this->assign,
            'AssignTo' => $assignToEmp,
            'AssignedBy' => $assignedByEmp,
            'Phone' => $this->Phone,
            'Address' => $this->Address,
//            'AssignTo'=>Assign::with('assignto')->get(),
            'href' => [
                'Assigns' => Route('Assigns.index', $this->id)
            ]
        ];
    }

}

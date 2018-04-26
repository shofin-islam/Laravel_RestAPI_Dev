<?php

namespace App\Http\Resources\JobRequest;

use Illuminate\Http\Resources\Json\Resource;
use App\Assign;
class JobRequestCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $assignInfo = $this->assign;        
        foreach ($assignInfo as $ai){
           $assignToEmp[]=  \App\Employee::where('id',$ai->AssignTo)->first();
           $assignedByEmp[]=\App\Employee::where('id',$ai->AssignedBy)->first();
        }
        return [
            'ServiceItem'=>$this->ServiceItem,
            'ServiceType'=>($this->RequestType === 1) ? 'Web' : (($this->RequestType === 2) ? 'Home' : 'Guest'),
            'Brand'=>$this->brand->Name,
            'DeviceQty'=>$this->DeviceQty,
//          'AssignInfo'=>$this->assign,
            'Phone'=>  $this->Phone,
            'Address'=>  $this->Address,
            'CreatedBy'=>$this->ReqCreatedBy,
            'RequestNote'=>$this->RequestNote,
            'AssignTo'=>$assignToEmp,
            'AssignedBy'=>$assignedByEmp,
            'href'=>[
                'Details'=>Route('JobRequests.show',$this->id)
            ]
        ];
    }
}

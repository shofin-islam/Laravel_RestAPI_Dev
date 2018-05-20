<?php

namespace App\Http\Resources\JobRequest;

use App\Assign;
use App\RequestStatus;
use Illuminate\Http\Resources\Json\JsonResource;

class JobRequestResource extends JsonResource {

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request) {
        
        $assignInfo = $this->assign;

        if (count($assignInfo) > 0) {

            $assignToEmp = \App\Employee::where('id', $assignInfo->AssignTo)->first();
            $assignTo = $assignToEmp->Name;
            $assignEmpPhone = $assignToEmp->Phone;
            $assignEmpImage = $assignToEmp->ImageUrl;

                // $assignedBy = \App\Employee::where('id', $assignInfo->AssignedBy)->first();
            $JobStatus=RequestStatus::where('AssignID', $assignInfo->id)->first();
            if (!empty($JobStatus)) {
               $Status = $JobStatus->Status;
            }else{
                $Status=null;
            }
            
        }else{
            $assignTo = null;
            $assignEmpPhone = null;
            $assignEmpImage = null;
            $Status=null;
        }

        if (!empty($this->billing)) {
            $paymentStatus=$this->billing->status;
        }else{
            $paymentStatus=null;
        }


        return [
            'ServiceId' => $this->ServiceId,
            'ServiceItem' => $this->ServiceItem,
            'ServiceItemId' => $this->ServiceItemId,
            'ServiceType' => ($this->RequestType === 1) ? 'Web' : (($this->RequestType === 2) ? 'Home' : 'Guest'),
            'Brand' => $this->brand->Name,
            'DeviceQty' => $this->DeviceQty,
            'Capacity' => $this->Capacity,
            'Description' => $this->ProblemDescription,
            'ExpectedDate' => $this->ExpectedDate,
            'ExpectedTime' => $this->ExpectedTime,
            'Name' => $this->Name,
            'Phone' => $this->Phone,
            'Address' => $this->Address,
            'Email' => $this->Email,
            'CreatedBy' => $this->ReqCreatedBy,
            'CompletionDate' => $this->ProbableCompletionDate,
            'RequestNote' => $this->RequestNote,
            'PaymentMethod' => $this->PaymentMethod,
            'JobStatus' => $Status,
            'AssignTo' => $assignTo,
            'AssignedEmpPhone' => $assignEmpPhone,
            'AssignedEmpImage' => $assignEmpImage,
            'PaymentStatus' =>$paymentStatus,
            'href' => [
                'Details' => Route('JobRequests.show', $this->id)
            ]
        ];
    }

}

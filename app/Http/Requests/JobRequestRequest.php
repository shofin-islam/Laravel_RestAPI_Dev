<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class JobRequestRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return TRUE;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'ServiceItem' =>'required',
            'Name' =>'required|string',
            'Email' =>'email',
            'Description' => 'required',
            'Brand'=>'required|integer',
            'DeviceQty'=>'required|integer',
            'Phone'=> 'required'
        ];
    }
}

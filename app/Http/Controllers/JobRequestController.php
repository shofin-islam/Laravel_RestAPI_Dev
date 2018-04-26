<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\JobRequest;
use \App\Http\Resources\JobRequest\JobRequestResource;
use \App\Http\Resources\JobRequest\JobRequestCollection;
use App\Http\Requests\JobRequestRequest;
use Symfony\Component\HttpFoundation\Response;

class JobRequestController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
//        $this->middleware('auth:api')->except('index','show'); to access some function
    }
    
    public function index()
    {
        return JobRequestCollection::collection(JobRequest::paginate(2));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(JobRequestRequest $request)
    {
        $JobRequest = new JobRequest;
        $JobRequest->ServiceItem = $request->ServiceItem;
        $JobRequest->ProblemDescription = $request->Description;
        $JobRequest->Brand = $request->Brand;
        $JobRequest->DeviceQty = $request->DeviceQty;
        $JobRequest->Phone = $request->Phone;
        $JobRequest->Address = $request->Address;
        $JobRequest->save();
        return response([
            'data'=> new JobRequestResource($JobRequest),Response::HTTP_CREATED
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
//        return \App\JobRequest:: where('id',$id)->first();
        // return ProductResource::collection(Product::all());﻿
        return new JobRequestResource(JobRequest::find($id));
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request['ProblemDescription'] = $request->Description;
        unset($request['Description']);
        $JobRequest = JobRequest::find($id);
        $JobRequest->update($request->all());
       return response([
            'data'=> new JobRequestResource($JobRequest),Response::HTTP_OK
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $JobRequest = JobRequest::find($id);
        if($JobRequest){
            $JobRequest->delete();
        return response(Response::HTTP_NO_CONTENT);
        }else{
            Return "Content Not Found";
        }  
    }
}

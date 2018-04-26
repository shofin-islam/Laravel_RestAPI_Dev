<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\JobRequest;
use App\Assign;
use App\Http\Resources\Assign\AssignResource;
class AssignController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
//        $this->middleware('auth:api')->except('index','show'); to access some function
    }
    
    public function index($id) 
    {
//        return JobRequest::find($id)->assign;
      return AssignResource::collection(JobRequest::find($id)->assign);
//        return Assign::all();
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($jobRequestId,$assignId)
    {
//        $JR=JobRequest::find($jobRequestId);
        
        return new AssignResource(Assign::find($assignId));
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

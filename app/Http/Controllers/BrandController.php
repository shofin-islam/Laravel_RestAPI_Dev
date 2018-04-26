<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Brand;

use \App\Http\Resources\Brand\BrandResource;
use App\Http\Resources\Brand\BrandCollection;
use Illuminate\Http\Resources\Json\Resource;

class BrandController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
//        $this->middleware('auth:api')->except('index','show'); to access some function
    }
    
    public function index()
    {
         return BrandCollection::collection(Brand::all());
    }
    
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
    public function show($id)
    {
       return new BrandResource(Brand::find($id));
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

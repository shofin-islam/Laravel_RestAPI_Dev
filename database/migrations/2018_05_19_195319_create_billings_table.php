<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBillingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('billings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('job_request_id')->unsigned()->index()->unique(); // foreign key must be unsigned and base table execute befor this.
            $table->foreign('job_request_id')->references('id')->on('job_requests')->onDelete('cascade');
            $table->integer('payment_id')->nullable();
            $table->integer('amount')->nullable();
            $table->integer('discount')->nullable();
            $table->string('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('billings');
    }
}

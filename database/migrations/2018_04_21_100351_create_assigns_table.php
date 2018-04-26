<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAssignsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assigns', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('job_request_id')->unsigned()->index(); // foreign key must be unsigned and base table execute befor this.
            $table->foreign('job_request_id')->references('id')->on('job_requests')->onDelete('cascade');
            $table->integer('AssignTo');
            $table->string('TechnicalInput');
            $table->integer('AssignedBy');
            $table->dateTime('AssignDate')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('assigns');
    }
}

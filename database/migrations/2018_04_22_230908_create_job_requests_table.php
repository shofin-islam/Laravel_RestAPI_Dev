<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_requests', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ServiceItem')->nullable();
            $table->integer('RequestType')->nullable();
            $table->string('ProblemDescription')->nullable();
            $table->dateTime('ExpectedDate')->nullable();
            $table->integer('Brand')->nullable();
            $table->integer('DeviceQty')->nullable();
            $table->string('Phone')->nullable();
            $table->text('Address')->nullable();
            $table->dateTime('ProbableCompletionDate')->nullable();
            $table->string('ReqCreatedBy')->nullable();
            $table->string('RequestNote')->nullable();
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
        Schema::dropIfExists('job_requests');
    }
}

<?php namespace Kodoti\Events\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKodotiEventsEvents extends Migration
{
    public function up()
    {
        Schema::create('kodoti_events_events', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title', 50);
            $table->string('slug', 75);
            $table->string('description', 150);
            $table->text('content');
            $table->dateTime('date');
            $table->string('location', 100);
            $table->string('picture', 100);
            $table->integer('category_id')->unsigned();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('kodoti_events_events');
    }
}

<?php namespace Kodoti\Events\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKodotiEventsSubscribers extends Migration
{
    public function up()
    {
        Schema::create('kodoti_events_subscribers', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('fullname', 100);
            $table->string('email', 100);
            $table->string('document', 20);
            $table->integer('event_id')->unsigned();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('kodoti_events_subscribers');
    }
}

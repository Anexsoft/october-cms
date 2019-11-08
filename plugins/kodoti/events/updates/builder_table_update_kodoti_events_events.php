<?php namespace Kodoti\Events\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKodotiEventsEvents extends Migration
{
    public function up()
    {
        Schema::table('kodoti_events_events', function($table)
        {
            $table->text('content')->nullable()->change();
            $table->dateTime('date')->nullable()->change();
            $table->string('location', 100)->nullable()->change();
            $table->string('picture', 100)->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('kodoti_events_events', function($table)
        {
            $table->text('content')->nullable(false)->change();
            $table->dateTime('date')->nullable(false)->change();
            $table->string('location', 100)->nullable(false)->change();
            $table->string('picture', 100)->nullable(false)->change();
        });
    }
}

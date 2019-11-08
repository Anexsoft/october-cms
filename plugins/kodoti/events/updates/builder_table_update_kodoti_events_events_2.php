<?php namespace Kodoti\Events\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKodotiEventsEvents2 extends Migration
{
    public function up()
    {
        Schema::table('kodoti_events_events', function($table)
        {
            $table->dropColumn('picture');
        });
    }
    
    public function down()
    {
        Schema::table('kodoti_events_events', function($table)
        {
            $table->string('picture', 100)->nullable();
        });
    }
}

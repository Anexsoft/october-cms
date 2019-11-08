<?php namespace Kodoti\Events\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKodotiEventsCategories extends Migration
{
    public function up()
    {
        Schema::create('kodoti_events_categories', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title', 50);
            $table->string('description', 150);
            $table->string('slug', 100);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('kodoti_events_categories');
    }
}

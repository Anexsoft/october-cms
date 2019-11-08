<?php namespace Kodoti\Slider\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKodotiSliderPictures extends Migration
{
    public function up()
    {
        Schema::table('kodoti_slider_pictures', function($table)
        {
            $table->text('items')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('kodoti_slider_pictures', function($table)
        {
            $table->dropColumn('items');
        });
    }
}

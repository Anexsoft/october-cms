<?php namespace Kodoti\Slider\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKodotiSliderPictures extends Migration
{
    public function up()
    {
        Schema::create('kodoti_slider_pictures', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name', 100);
            $table->string('code', 50);
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('kodoti_slider_pictures');
    }
}

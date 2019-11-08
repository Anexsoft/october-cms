<?php namespace Kodoti\Slider\Models;

use Model;

/**
 * Model
 */
class Galery extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'kodoti_slider_pictures';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    protected $jsonable = [
        'items'
    ];
}

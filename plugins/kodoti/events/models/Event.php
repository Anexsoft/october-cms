<?php namespace Kodoti\Events\Models;

use Model;

/**
 * Model
 */
class Event extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'kodoti_events_events';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $belongsTo = [
        'category' => 'Kodoti\Events\Models\Category'
    ];

    public $attachOne = [
        'picture' => 'System\Models\File'
    ];
}

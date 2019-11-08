<?php namespace Kodoti\Events\Models;

use Model;

/**
 * Model
 */
class Subscriber extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'kodoti_events_subscribers';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $belongsTo = [
        'event' => 'Kodoti\Events\Models\Event'
    ];
}

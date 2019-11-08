<?php namespace Kodoti\Events\Models;

use Model;

/**
 * Model
 */
class Category extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'kodoti_events_categories';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $hasMany = [
        'events' => ['Kodoti\Events\Models\Event']
    ];

    public function getTotalEventsAttribute()
    {
        return $this->events
                    ->where('category_id', $this->id)
                    ->count();
    }
}

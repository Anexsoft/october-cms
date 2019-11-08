<?php
namespace Kodoti\Events\Components;

use Kodoti\Events\Models\Event,
    Kodoti\Events\Models\Category;

class EventList extends \Cms\Classes\ComponentBase
{
    public function componentDetails()
    {
        return [
            'name' => 'Event',
            'description' => 'Lista los eventos creados.'
        ];
    }

    public function defineProperties()
    {
        return [
            'columns' => [
                 'title'             => 'Columnas',
                 'description'       => 'Tamaño de la columna.',
                 'default'           => 4,
                 'type'              => 'string',
                 'validationPattern' => '^[0-9]+$',
                 'validationMessage' => 'Valor ingresado no es correcto.'
            ],
            'category' => [
                'title'       => 'Category',
                'type'        => 'dropdown',
                'default'     => ''
            ]
        ];
    }

    public function getCategoryOptions() 
    {
        $result = [];
        $result[''] = 'Sin categoría';

        $data = Category::get();

        foreach($data as $item) {
            $result[$item->id] = $item->title;
        }

        return $result;
    }

    public function onRun()
    {
        $this->page['columns'] = $this->property('columns');

        $category = $this->property('category');

        if($category != '') {
            $this->page['result'] = Event::where('category_id', $category)->get();
        } else {
            $this->page['result'] = Event::get();
        }
    }
}
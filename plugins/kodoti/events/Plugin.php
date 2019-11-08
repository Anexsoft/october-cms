<?php namespace Kodoti\Events;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Kodoti\Events\Components\EventList' => 'event'
        ];
    }

    public function registerSettings()
    {

    }
}

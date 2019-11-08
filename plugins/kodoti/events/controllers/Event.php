<?php namespace Kodoti\Events\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Event extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Kodoti.Events', 'main-menu-item', 'side-menu-item2');
    }
}

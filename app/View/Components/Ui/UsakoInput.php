<?php

namespace App\View\Components\Ui;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class UsakoInput extends Component
{

    /**
     * Create a new component instance.
     */
    public function __construct(
        public string $name,
        public int $xs = 12,
        public int $sm = 6,
        public int $md = 0,
        public int $xxl = 0,
        public string $type = 'text',
        public string $label = '',
        public string $id = '',
        public bool $required = false,
        public array|object|string $options = [],
        public string $optionObject = '',
        public string $option_value = 'nombre',
        public string $option_id = 'id'
    ) {
        $this->label = $label === '' ? ucfirst($name) : $label;
        $this->id = $id === '' ? $name : $id;
        $this->md = $md === 0 ? $sm : $md;
        $this->xxl = $xxl === 0 ? $md : $xxl;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.ui.usako-input');
    }
}

@if ($type === 'select')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <select class="form-select" id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes }}>
                <option selected value="">Seleccione una opción</option>
                @foreach ($options as $option)
                    <option value="{{ $option->id }}">{{ $option->nombre }}</option>
                @endforeach
            </select>
        </div>
    </div>
@elseif ($type === 'selectb4')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <select class="form-control" id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes }}>
                <option selected value="">Seleccione una opción</option>
                @foreach ($options as $option)
                    <option value="{{ $option->id }}">{{ $option->nombre }}</option>
                @endforeach
            </select>
        </div>
    </div>
@elseif ($type === 'select_object')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <select class="form-select" id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes }}>
                <template v-for="item in {{ $optionObject }}">
                    <option :value="item">@{{ item.nombre }}</option>
                </template>
            </select>
        </div>
    </div>
@elseif ($type === 'select_object_id')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <select class="form-select" id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes }}>
                <template v-for="item in {{ $optionObject }}">
                    <option :value="item.id">@{{ item.nombre }}</option>
                </template>
            </select>
        </div>
    </div>
@elseif ($type === 'select2')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <model-list-select :list="{{ $options }}" {{ $attributes }} id="{{ $id }}" name="{{ $name }}" option-value="id" option-text="nombre"></model-list-select>
        </div>
    </div>
@elseif ($type === 'hidden')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <input type="hidden" class="form-control" id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes }}>
    </div>
@elseif ($type === 'textarea')
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <textarea type="{{ $type }}" class="form-control" id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes }}></textarea>
        </div>
    </div>
@else
    <div class="col-{{ $xs }} col-sm-{{ $sm }} col-md-{{ $md }} col-xxl-{{ $xxl }}">
        <div class="form-group">
            <label for="{{ $id }}" class="form-label">{{ $label }} @if ($required)
                    <span class="text-danger">*</span>
                @endif
            </label>
            <input type="{{ $type }}" class="form-control"  id="{{ $id }}" name="{{ $name }}" {{ $required ? 'required' : '' }} {{ $attributes  }}>
        </div>
    </div>
@endif

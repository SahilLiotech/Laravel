<div class="mb-3">
    <label for="" class="form-label">{{$label}}</label>
    <select name="{{$name}}" class="form-select" aria-describedby="emailHelp">
        <option selected>Choose...</option>
        @foreach ($options as $option)
        <option value="{{ $option }}">{{ $option }}</option>
        @endforeach
    </select>
</div>
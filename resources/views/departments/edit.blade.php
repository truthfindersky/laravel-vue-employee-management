@extends('layouts.main')

@section('content')
    <section class="section">
        <div class="row justify-content-center">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h4 class="card-title">{{ __('Edit Department') }}</h4>
                        </div>
                        <div class="pt-3">
                            <a class="btn btn-primary" href="{{ route('departments.index') }}">Back</a>
                        </div>
                    </div>
                    <div class="card-body mt-3">
                        <form method="POST" class="row g-3" action="{{ route('departments.update', $department->id) }}">
                            @csrf
                            @method('PUT')
                            <div class="col-12">
                                <label for="name">{{ __('Department Name') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        id="name" name="name" placeholder="Department Name"
                                        value="{{ old('name', $department->name) }}" required>
                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary p-2">{{ __('Update Department') }}</button>
                        </form>
                    </div>
                   <div class="card-body card-body-padding">
                        <form method="POST" action="{{ route('departments.destroy', $department->id) }}">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger">Delete {{ $department->name }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
@endsection

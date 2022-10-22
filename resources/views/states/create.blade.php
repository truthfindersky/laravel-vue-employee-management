@extends('layouts.main')

@section('content')
    <section class="section">
        <div class="row justify-content-center">
            <div class="col-lg-4">

                <div class="card">
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h4 class="card-title">{{ __('Add State') }}</h4>
                        </div>
                        <div class="pt-3">
                            <a class="btn btn-primary" href="{{ route('states.index') }}">Back</a>
                        </div>
                    </div>
                    <div class="card-body mt-3">
                        <form method="POST" class="row g-3" action="{{ route('states.store') }}">
                            @csrf

                            <div class="col-12">
                                <select name="country_id" class="form-control" aria-label="Default select example">
                                    <option selected>Select Country</option>
                                    @foreach ($countries as $country)
                                        <option value="{{ $country->id }}">{{ $country->name }}</option>
                                    @endforeach
                                </select>
                                @error('country_id')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                              </div>

                            <div class="col-12">
                                <label for="name">{{ __('State Name') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        id="name" name="name" placeholder="State Name"
                                        value="{{ old('name') }}" required autocomplete="name"
                                        autofocus>
                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary p-2">{{ __('Add State') }}</button>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
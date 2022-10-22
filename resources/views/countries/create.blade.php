@extends('layouts.main')

@section('content')
    <section class="section">
        <div class="row justify-content-center">
            <div class="col-lg-4">

                <div class="card">
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h4 class="card-title">{{ __('Add Country') }}</h4>
                        </div>
                        <div class="pt-3">
                            <a class="btn btn-primary" href="{{ route('countries.index') }}">Back</a>
                        </div>
                    </div>
                    <div class="card-body mt-3">
                        <form method="POST" class="row g-3" action="{{ route('countries.store') }}">
                            @csrf
                            <div class="col-12">
                                <label for="country_code">{{ __('Code') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('country_code') is-invalid @enderror"
                                        id="country_code" name="country_code" placeholder="Country Code"
                                        value="{{ old('country_code') }}" required autocomplete="country_code"
                                        autofocus>
                                    @error('country_code')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="name">{{ __('Country Name') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        id="name" name="name" placeholder="Country Name"
                                        value="{{ old('name') }}" required autocomplete="name"
                                        autofocus>
                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary p-2">{{ __('Add Country') }}</button>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
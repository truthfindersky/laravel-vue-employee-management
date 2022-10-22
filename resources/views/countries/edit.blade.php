@extends('layouts.main')

@section('content')
    <section class="section">
        <div class="row justify-content-center">
            <div class="col-lg-4">

                <div class="card">
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h4 class="card-title">{{ __('Edit Country') }}</h4>
                        </div>
                        <div class="pt-3">
                            <a class="btn btn-primary" href="{{ route('countries.index') }}">Back</a>
                        </div>
                    </div>
                    <div class="card-body mt-3">
                        <form method="POST" class="row g-3" action="{{ route('countries.update', $country->id) }}">
                            @csrf
                            @method('PUT')
                            <div class="col-12">
                                <label for="country_code">{{ __('Code') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('country_code') is-invalid @enderror"
                                        id="country_code" name="country_code" placeholder="Country Code"
                                        value="{{ old('country_code', $country->country_code) }}" required
                                        autocomplete="country_code" autofocus>
                                    @error('country_code')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="dial_code">{{ __('Dital Code') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('dial_code') is-invalid @enderror"
                                        id="dial_code" name="dial_code" placeholder="Country Code"
                                        value="{{ old('dial_code', $country->dial_code) }}" required
                                        autocomplete="dial_code" autofocus>
                                    @error('dial_code')
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
                                        value="{{ old('name', $country->name) }}" required autocomplete="name" autofocus>
                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary p-2">{{ __('Update') }}</button>
                        </form>
                    </div>
                    <div class="card-body card-body-padding">
                        <form method="POST" action="{{ route('countries.destroy', $country->id) }}">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger">Delete {{ $country->country_code }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
@endsection

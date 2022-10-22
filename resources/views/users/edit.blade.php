@extends('layouts.main')

@section('content')

    <section class="section">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h4 class="card-title">{{ __('Update User') }}</h4>
                        </div>
                        <div class="pt-3">
                            <a class="btn btn-primary" href="{{ route('users.index') }}">Back</a>
                        </div>
                    </div>
                    <div class="card-body mt-3">
                        <form method="POST" class="row g-3" action="{{ route('users.update', $user->id) }}">
                            @csrf
                            @method('PUT')
                            <div class="col-12">
                                <label for="username">{{ __('Username') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        id="username" name="username" placeholder="User Name"
                                        value="{{ old('username', $user->username) }}" required autocomplete="username"
                                        autofocus>
                                    @error('username')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="first_name">{{ __('First Name') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        id="first_name" name="first_name" placeholder="First Name"
                                        value="{{ old('first_name', $user->first_name) }}" required
                                        autocomplete="first_name" autofocus>
                                    @error('first_name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="last_name">{{ __('Last Name') }}</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        id="last_name" name="last_name" placeholder="Last Name"
                                        value="{{ old('last_name', $user->last_name) }}" required autocomplete="last_name"
                                        autofocus>
                                    @error('last_name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="email">{{ __('E-Mail Address') }}</label>
                                <div class="input-group">
                                    <input type="email" class="form-control @error('name') is-invalid @enderror"
                                        id="email" name="email" placeholder="Email"
                                        value="{{ old('email', $user->email) }}" required autocomplete="email" autofocus>
                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary p-2">{{ __('Update User') }}</button>
                        </form>
                    </div>
                    <div class="card-body card-body-padding">
                        <form method="POST" action="{{ route('users.destroy', $user->id) }}">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger">Delete {{ $user->username }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        {{-- update password --}}
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h4 class="card-title">{{ __('Change Password') }}</h4>
                        </div>
                    </div>
                    <div class="card-body mt-3">
                        <form method="POST" class="row g-3" action="{{ route('users.change.password', $user->id) }}">
                            @csrf
                            @method('POST')
                            <div class="col-12">
                                <label for="password">{{ __('Password') }}</label>
                                <div class="input-group">
                                    <input type="password" class="form-control @error('password') is-invalid @enderror"
                                        id="password" name="password" required autocomplete="new-password">
                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="password-confirm">{{ __('Confirm Password') }}</label>
                                <div class="input-group">
                                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation"
                                        autocomplete="new-password">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary p-2">{{ __('Update User') }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

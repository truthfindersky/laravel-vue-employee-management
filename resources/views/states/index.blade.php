@extends('layouts.main')
@section('title','States')

@section('content')
    <section class="section">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card">
                    @if (session()->has('message'))
                        <div class="alert alert-success">
                            {{ session('message') }}
                        </div>
                    @endif
                    <div class="card-header d-flex">
                        <div class="flex-grow-1">
                            <h5>States</h5>
                        </div>
                        <div>
                            <form method="GET" action="{{ route('states.index') }}">
                                <div class="d-flex">
                                    <div>
                                        <input type="search" name="search" class="form-control" placeholder="Search"
                                            aria-label="Search">
                                    </div>
                                    <div>
                                        <button class="btn btn-primary text-white mb-0 me-2 " type="submit">Search
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div>
                            <a class="btn btn-primary" href="{{ route('states.create') }}">Add State</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#ID</th>
                                    <th scope="col">Country Code</th>
                                    <th scope="col">State Name</th>
                                    <th scope="col">Manage</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($states as $state)
                                    <tr>
                                        <td>{{ $state->id }}</td>
                                        <td>{{ $state->country->country_code }}</td>
                                        <td>{{ $state->name }}</td>
                                        <td>
                                            <a href="{{ route('states.edit', $state->id) }}"
                                                class="btn btn-success btn-sm">Edit</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

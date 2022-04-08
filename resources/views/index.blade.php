@extends('layouts.master')

@section('title', 'Главная')


@section('content')
    <div class="row  row-cols-2 row-cols-lg-4 g-2 g-lg-3">
        @foreach($categories as $category)
            <div class="col">
                <div class="border rounded box p-3  bg-light text-center">
                    <a href="{{ route('category.show', [$category]) }}">
                        <h2>{{ $category->name }}</h2>
                    </a>
                    <p>
                        {{ $category->description }}
                    </p>
                </div>
            </div>
        @endforeach
    </div>

@endsection

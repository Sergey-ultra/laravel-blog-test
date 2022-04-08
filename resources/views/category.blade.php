@extends('layouts.master')

@section('title', 'Категория' . $category->name)


@section('content')
    <div class="row">
        <h3>{{ $category->name  }}</h3>
        <div>{{ $category->description }}</div>
    </div>

    <div class="row  row-cols-2 row-cols-lg-4 g-2 g-lg-3">


            @foreach($posts as $post)
                @include('layouts.card', compact('post'))
            @endforeach
    </div>


    <div class="d-flex justify-content-center">
        {{ $posts->links() }}
    </div>
@endsection

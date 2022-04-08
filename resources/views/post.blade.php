@extends('layouts.master')

@section('title',  $post->title)

@section('content')
    <div class="post__img">
        <img  src="{{ $post->image }}" alt="{{ $post->image }}">
    </div>
    <h5>{{ $post->title }}</h5>
    <div>{{ $post->body  }}</div>
@endsection
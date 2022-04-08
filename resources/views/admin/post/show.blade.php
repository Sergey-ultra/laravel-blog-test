@extends('admin.layouts.master')

@section('title', 'Пост ' . $post->title)

@section('content')
    <div class="col-md-12">
        <h1>{{ $post->title }}</h1>
        <table class="table">
            <tbody>
            <tr>
                <th>
                    Поле
                </th>
                <th>
                    Значение
                </th>
            </tr>
            <tr>
                <td>ID</td>
                <td>{{ $post->id}}</td>
            </tr>
            <tr>
                <td>Название</td>
                <td>{{ $post->title }}</td>
            </tr>
            <tr>
                <td>Текст</td>
                <td>{{ $post->body }}</td>
            </tr>
            <tr>
                <td>Категория</td>
                <td>{{ $post->category->name }}</td>
            </tr>
            <tr>
                <td>Картинка</td>
                <td><img src="{{ $post->image }}" alt="{{ $post->image }}" height="240px"></td>
            </tr>
            </tbody>
        </table>
    </div>
@endsection

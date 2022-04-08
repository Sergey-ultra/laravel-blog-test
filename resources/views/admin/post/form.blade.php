@extends('admin.layouts.master')

@isset($post)
    @section('title', 'Редактировать пост ' . $post->title)
@else
    @section('title', 'Создать пост')
@endisset

@section('content')
    <div class="col-md-12">
        @isset($post)
            <h1>Редактировать Пост <b>{{ $post->title }}</b></h1>
        @else
            <h1>Добавить Пост</h1>
        @endisset
        <form method="POST"  enctype="multipart/form-data"
              @isset($post)
              action="{{ route('post.update', $post) }}"
              @else
              action="{{ route('post.store') }}"
                @endisset
        >
            <div>
                @isset($post)
                    @method('PUT')
                @endisset
                @csrf
                    <div class="input-group row mb-2">
                        <label for="category_id" class="col-sm-2 col-form-label">Категория: </label>
                        <div class="col-sm-6">
                            @include('admin.layouts.error', ['fieldName' => 'category_id'])
                            <select name="category_id" id="category_id" class="form-select">
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}"
                                            @isset($post)
                                            @if($post->category_id == $category->id)
                                            selected
                                            @endif
                                            @endisset
                                    >{{ $category->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="input-group row mb-2">
                        <label for="name" class="col-sm-2 col-form-label">Название: </label>
                        <div class="col-sm-6">
                            @error('title')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <input type="text" class="form-control" name="title" id="title"
                                   value="@isset($post){{ $post->title }}@endisset">
                        </div>
                    </div>


                    <div class="input-group row mb-2">
                        <label for="body" class="col-sm-2 col-form-label">Текст: </label>
                        <div class="col-sm-6">
                            @error('body')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <textarea class="form-control" name="body" id="body">
                                @isset($post){{ $post->body }}@endisset
                            </textarea>
                        </div>
                    </div>

                    <div class="input-group row mb-2">
                        <label for="image" class="col-sm-2 col-form-label">Картинка: </label>
                        <div class="col-sm-6">
                            <input class="form-control form-control-sm" type="file" name="image" id="image"
                                   value="@isset($post->image){{ $post->image }}@endisset">
                        </div>
                    </div>


                    <button class="btn btn-success">Сохранить</button>
            </div>
        </form>
    </div>
@endsection
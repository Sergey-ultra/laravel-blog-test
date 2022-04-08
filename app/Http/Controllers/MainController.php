<?php

namespace App\Http\Controllers;


use App\Models\Category;
use App\Models\Post;


class MainController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::select('id', 'name')->get();
        return view('index', compact('categories'));
    }

    public function show(Post $post)
    {
        return view('post', compact('post'));
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        $posts = Post::select('id', 'title', 'body', 'image')
            ->where('category_id', $category->id)
            ->orderBy('created_at', 'DESC')
            ->paginate(6);

        return view('category', compact('category', 'posts'));
    }
}

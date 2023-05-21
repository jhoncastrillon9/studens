<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Http\Requests\PostRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return response()->json($posts);
    }
    
    public function store(PostRequest $request)
    {
        $post = Post::create($request->validated());
        return response()->json($post, 201);
    }
    
    public function show(Post $post)
    {
        return response()->json($post);
    }
    
    public function update(PostRequest $request, Post $post)
    {
        $post->update($request->validated());
        return response()->json($post);
    }
    
    public function destroy(Post $post)
    {
        $post->delete();
        return response()->json(null, 204);
    }
}

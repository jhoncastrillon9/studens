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

    public function getPostById($id)
    {
        try {
            $post = Post::findOrFail($id);
            return response()->json($post);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    
    public function store(PostRequest $request)
    {     
        try {
            $post = Post::create($request->validated());
            return response()->json($post, 201);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json(['errors' => $e->errors()], 422); // Devuelve los errores en formato JSON con código 422 (Unprocessable Entity)
        }
        
       
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

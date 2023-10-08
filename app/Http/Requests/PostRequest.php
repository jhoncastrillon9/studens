<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true; // Cambiar a "false" si se requiere autorización.
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required|min:3|max:220',
            'content' => 'required|min:3|max:2200',
            'category_id' => 'required|exists:categories,id',
            'user' => 'required|min:3|max:2200',
            'likes' => 'required',
            'location' => 'required|min:3|max:2200',
            'url' => 'required|min:3|max:2200',
        ];
    }
}
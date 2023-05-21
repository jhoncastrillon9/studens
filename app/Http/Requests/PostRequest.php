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
            'title' => 'required|string',
            'url_clean' => 'required|string',
            'content' => 'required|string',
            'posted' => 'required|boolean',
            'category_id' => 'required|exists:categories,id',
            'created_id' => 'required|exists:users,id',
            'updated_id' => 'required|exists:users,id',
        ];
    }
}
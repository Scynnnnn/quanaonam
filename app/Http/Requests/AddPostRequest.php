<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddPostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [

            'name' => 'required|unique:posts,title',
            'description' => 'required',
            'images' => 'required',
            'contents' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Tiêu đề bài viết không được trống',
            'name.unique' => 'Tiêu đề bài viết đã tồn tại',
            'description.required'  => 'Mô tả ngắn bài viết không được trống',
            'images.required'  => 'Vui lòng chọn hình ảnh đại diện',
            'contents.required'  => 'Vui lòng nhập nội dung bài viết',
        ];
    }
}

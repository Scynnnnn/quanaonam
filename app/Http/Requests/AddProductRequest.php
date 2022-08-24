<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddProductRequest extends FormRequest
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
            'cate_id' => 'required|not_in:0',
            'name' => 'required|unique:products,name',
            'description' => 'required',
            'images'  => 'required',

        ];
    }

    public function messages()
    {
        return [
            'cate_id.not_in' =>'Vui lòng chọn danh mục',
            'name.required' => 'Tên sản phẩm không được trống',
            'name.unique' => 'Tên sản phẩm đã tồn tại',
            'description.required'  => 'Mô tả sản phẩm không được trống',
            'images.required'  => 'Vui lòng chọn hình ảnh đại diện',
        ];
    }
}

@extends('backend.master')
@section("title-page", "Quản lý sản phẩm")
@section("title-description", "Sửa sản phẩm")
@section('content')
    <?php $open = "products"?>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };
    </script>


    <div class="col-md-10">
        @include("messages")
        <form action="{{ route("products.post_edit", $products->id)}}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="form-group">
                <label for="">Danh mục sản phẩm</label>
                <select name="cate_id" id="" class="form-control">
                    <?php MenuMulti_menu($data, 0, $str = '---| ', old('sltCate')); ?>


                </select>
            </div>

            <div class="form-group">
                <label for="">Tên sản phẩm </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Tên sản phẩm..."
                       value="{{$products['name']}}">
            </div>
            <div class="form-group">
                <label for="">Số lượng </label>
                <input required type="text" name="qty" id="name" class="form-control" placeholder="Số lượng..."
                       value="{{$products['qty']}}">
            </div>

            <div class="form-group">
                <label for="">Gía sản phẩm </label>
                <input type="text" name="price" id="name" class="form-control" placeholder="Gía sản phẩm..."
                       value="{{$products['price']}}">
            </div>

            <div class="form-group">
                <label for="">Khuyến mãi % </label>
                <input type="text" name="discount" id="price" class="form-control" placeholder="Khuyến mãi %"
                       value="{{$products['promotion']}}">
            </div>
            <div class="form-group">
                <label for="">Mô tả sản phẩm </label>
                <textarea name="description" id="" cols="30" rows="10"
                          class="form-control">{{ $products['description'] }}</textarea>
            </div>

           <!--  <div class="form-group">
                <label for="">Nhà cung cấp</label>
                <input type="text" name="supplier" id="supplier" class="form-control" placeholder="Nhà cung cấp..."
                       value="{{$products['supplier']}}">
            </div> -->
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace('description', options);
            </script>


{{--            <div class="form-group">--}}
{{--                <label for="">Ngày bắt đầu khuyến mãi </label>--}}
{{--                <input type="date" name="promotion_day_start" id="price" class="form-control" placeholder="Ngày bắt đầu khuyến mãi"--}}
{{--                       value="{{$products['promotion_day_start']}}">--}}
{{--            </div>--}}
{{--            <div class="form-group">--}}
{{--                <label for="">Ngày kết thúc khuyến mãi </label>--}}
{{--                <input type="date" name="promotion_day_end" id="price" class="form-control" placeholder="Ngày bắt đầu khuyến mãi"--}}
{{--                       value="{{$products['promotion_day_end']}}">--}}
{{--            </div>--}}


            <div class="form-group">
                <label for="">Hình đại diện </label><br>
                <img class="img-fluid" src="{{ asset("uploads/products/".$products->image) }}" alt=""
                     style="width: 200px; height: 150px">
                <br><br>
                <input type="file" name="images" class="form-control">
            </div>




            <div class="form-group">
                <label for="">Sản phẩm nổi bật</label><br>
                <label class="radio-inline"><input type="radio" name="hot" value="1" @if($products->hot == 1) {{"checked"}} @endif>Có</label>
                <label class="radio-inline"><input type="radio" name="hot" value="0" @if($products->hot == 0) {{"checked"}} @endif>Không</label>
            </div>

            <div class="form-group">
                <label for="">Trạng thái</label><br>
                <label class="radio-inline"><input type="radio" name="status" value="1" @if($products->status == 1) {{"checked"}} @endif>Hiển thị</label>
                <label class="radio-inline"><input type="radio" name="status" value="0" @if($products->status == 0) {{"checked"}} @endif>Không</label>
            </div>

            <div class="form-group">
                <label for="">Tiêu đề Seo
                </label>
                <input id="title_page" type="text" name="seo_title" class="form-control"
                       placeholder="Seo title" value="{{ $products['seo_title'] }}">
            </div>


            <div class="form-group">
                <label for="">Mô tả Seo</label>
                <textarea name="seo_description" id="seo_description" cols="30" rows="5" class="form-control"
                          placeholder="Seo description">{{ $products->seo_description }}</textarea>

            </div>

            <div class="form-group">
                <label for="">Seo keyword

                </label>
                <textarea name="seo_keyword" id="seo_keyword" cols="30" rows="2" class="form-control"
                          placeholder="Seo keyword">{{$products->seo_keyword}}</textarea>

            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Lưu lại</button>

                <button type="reset" class="btn btn-default">Làm mới</button>
            </div>

        </form>
    </div>
@endsection

@section("script")
    <script>

                <div class="form-group col-md-4">
                    <label for="">Giá</label>
                    <input name="price[]" type="text" class="form-control" placeholder="Giá">
                </div>

                <div class="form-group col-md-4">
                    <label for="">Số lượng</label>
                    <input name="qty[]" type="text" class="form-control" placeholder="Số lượng">
                </div>`);
            });

            $(".btn-add-image").on("click", function () {
                $(".image").append(`<div class="col-md-12"><div class="form-control">
                        <input type="file" name="image_detail[]">
                    </div></div></br></br>`);
            });
        });
    </script>
@endsection

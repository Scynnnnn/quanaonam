@extends('backend.master')

@section("title-page", "Quản lý tin tức")
@section("title-description", "Thêm tin tức")
@section('content')

    <?php $open = "posts"?>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };
    </script>

    <div class="row">
        @include("messages")

        <form action="{{ route("posts.post_add") }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="col-md-10">


                <div class="form-group">
                    <label for="">Tiêu đề tin</label>
                    <input type="text" name="name" id="name" class="form-control" placeholder="Tiêu đề..."
                           value="{{old('name')}}">
                </div>


                <div class="form-group">
                    <label for="">Mô tả ngắn tin tức</label>
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control">
                          {{ old('description') }}
                    </textarea>
                    <script>
                        // Replace the <textarea id="editor1"> with a CKEditor
                        // instance, using default configuration.
                        CKEDITOR.replace('description', options);
                    </script>
                </div>

                <div class="form-group">
                    <label for="">Nội dung chi tiết tin</label>
                    <textarea name="contents" id="content" cols="30" rows="10" class="form-control">
                        {{ old('contents') }}
                    </textarea>
                    <script>
                        // Replace the <textarea id="editor1"> with a CKEditor
                        // instance, using default configuration.
                        CKEDITOR.replace('content', options);
                    </script>
                </div>
                <div class="form-group">
                    <label for="">Tin hot</label><br>
                    <label class="radio-inline"><input type="radio" name="hot" value="1" >Có</label>
                    <label class="radio-inline"><input type="radio" name="hot" value="0" checked>Không</label>
                </div>

                <div class="form-group">
                    <label for="">Hình ảnh đại diện</label>
                    <input type="file" name="images">
                </div>


                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Lưu lại</button>

                    <button type="reset" class="btn btn-default">Làm mới</button>
                </div>


            </div>


        </form>
    </div>
@endsection
@section("script")
    <script>

        $(document).ready(function () {

            // $('select').selectpicker();
            $('#name').keyup(function () {
                var name = $(this).val();
                $("#title_page").val(name);
                $("#path").val(xoa_dau(name));
            });
            $("#content-seo").hide();

            $("#show-seo").on("click", function () {
                // alert(3333);
                $("#content-seo").show();
            });
        });


    </script>
@endsection

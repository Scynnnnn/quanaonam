@extends('backend.master')
@section("title-page", "Quản lý danh mục")
@section("title-description", "Danh sách danh mục")
@section('content')
    <?php $open = "cates"?>
    <div class="row">

        <div class="col-md-12">
            @include("messages")
            <div class="form-group">
                <a href="{{ route("cates.get_add") }}" class="btn btn-primary"> <i class="fa fa-plus"></i> Thêm danh mục
                    mới</a>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên danh mục</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <?php listcate($data, $id_cha = 0, $str = ""); ?>
                        </tr>
                        </tbody>
                    </table>
                    {{ $data->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection

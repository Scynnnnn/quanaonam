@extends('backend.master')
@section("title-page", "Quản lý sản phẩm")
@section("title-description", "Danh sách sản phẩm")
@section('content')
    <?php $open = "products"?>

    <div class="form-group">
        <input class="form-control" id="myInput" type="text" placeholder="Search..">

    </div>
    <div class="table table-responsive">
        @include("messages")
        <table class="table table-striped" id="myTable">
            <thead>
            <tr>
                <th>id</th>
                <th></th>
                <th>Sản phẩm</th>
                <th>Danh mục</th>
                <th>Gía</th>
                <th>Khuyến mãi</th>


                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $item)
                <tr>
                    <td style="width: 50px;">{{ $item->id }}</td>
                    <td style="width: 50px;"><img src="{{"uploads/products/".$item->image}}" alt="" style="width: 50px;"></td>
                    <td>{{ $item['name'] }}</td>
                    <td>{{ $item->cates['name'] }}</td>
                    <td>{{ number_format($item->price, 0 ,',','.') }}</td>
                    <td>Giảm {{$item->promotion}}%</td>

                    <td>
                        <a href="{{ route('products.get_edit', $item->id) }}" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i> Sửa</a>
                        <a onclick="return confirm('Bạn chắc chắn xóa sản phẩm này ?')" href="{{ route('products.get_delete', $item->id) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Xóa</a>

                    </td>
                </tr>
            @endforeach

            </tbody>
        </table>
        {{ $products->links() }}
    </div>
@endsection
@section("script")
    <script>
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
@endsection

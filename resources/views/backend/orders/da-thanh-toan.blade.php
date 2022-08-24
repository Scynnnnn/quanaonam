@extends('backend.master')
@section("title-page", "Quản lý đơn hàng")
@section("title-description", "Danh sách đơn hàng đã thanh toán")
@section('content')
    <?php $open = "order"?>

    <div class="form-group">
        <input class="form-control" id="myInput" type="text" placeholder="Search..">

    </div>
    <div class="table table-responsive">
        @include("messages")
        <table class="table table-striped" id="myTable">
            <thead>
            <tr>
                <th>id</th>
                <th>Họ tên</th>

                <th>Số điện thoại</th>
                <th>Tổng tiền</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>

            </thead>
            <tbody>
            @foreach($orders as $item)
                <tr>
                    <td style="width: 50px;">{{ $item->id }}</td>
                    <td>{{ $item['name'] }}</td>

                    <td>{{ $item->phone}}</td>
                    <td>{{ number_format($item->total, 0,'','.') }} <sup>đ</sup></td>
                    <td>
                        @if($item->status == 0)
                            Chưa thanh toán
                        @else
                            <span class="text-success">Đã thanh toán</span>
                        @endif
                    </td>
                    {{--                    <td>{{ $item->discount }} %</td>--}}
                    <td>
                        @if($item->status == 0)
                            <a onclick="return confirm('Bạn chắc chắn xác nhận thanh toán đơn hàng ?')"
                               href="{{ route('order.xac_nhan_thanh_toan', $item->id) }}" class="btn btn-info btn-xs"><i
                                    class="fa fa-edit"></i> Xác nhận thanh toán</a>
                        @endif
                        <a href="{{ route('order.get_detail', $item->id) }}" class="btn btn-primary btn-xs"><i
                                class="fa fa-eye"></i> Xem chi tiết</a>
                        <a onclick="return confirm('Bạn chắc chắn xóa sản phẩm này ?')"
                           href="{{ route('order.get_delete', $item->id) }}" class="btn btn-danger btn-xs"><i
                                class="fa fa-trash"></i> Xóa</a>

                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {{ $orders->links() }}
    </div>
@endsection
@section("script")
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
@endsection

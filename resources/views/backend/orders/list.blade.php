@extends('backend.master')
@section("title-page", "Quản lý đơn hàng")
@section("title-description", "Danh sách đơn hàng")
@section('content')
    <?php $open = "order"?>

    <div class="form-group">
        <input class="form-control" id="myInput" type="text" placeholder="Search..">

    </div>
    <input type="hidden" id="data" value="{{ json_encode($data) }}" />
    <div class="row">
        <div class="col-lg-12">
            <div id="piechart" style="height: 200px;"></div>
        </div>
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
                <th>Ngày đặt</th>

                <th>Hình thức thanh toán</th>
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
                    <td>{{ $item->created_at->format('d/m/Y')}}

                    <td>{{$item->type}}</td>
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
    {{-- Orders --}}
    <script>
        var arr = [['Trạng thái', 'Số lượng']];
        var orders = JSON.parse(document.getElementById("data").value);
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);
        for(x of orders){
            arr.push([x.status,parseInt(x.order_count)])
        }  
        function drawChart() {

            var data = google.visualization.arrayToDataTable(
                arr
            );

            var options = {
            title: 'Thống kê đơn hàng'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
@endsection

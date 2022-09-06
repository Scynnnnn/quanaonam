@extends("frontend.master")
@section("content")
    <div class="container">
        <table class="table table-bordered">
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
                    <td>
                        <a href="{{ route('my.order.get_detail', $item->id) }}" class="btn btn-primary btn-xs" style="margin:0;"><i
                                class="fa fa-eye"></i> Xem chi tiết</a>

                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection

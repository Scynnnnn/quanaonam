@extends("frontend.master")
@section("content")
    <div class="container">
    <?php $open = "order"?>

<div class="col-sm-12">
    <table class="table table-bordered">
        <tbody>

        <tr>
            <td class="td-title">Họ tên khách hàng:</td>
            <td><p class="updateInfoRequired editable editable-click" data-name="last_name" data-type="text"
                   data-pk="138" data-title="Last name">{{$order->name}}</p></td>
        </tr>

        <tr>
            <td class="td-title">Phone:</td>
            <td><p class="updateInfoRequired editable editable-click" data-name="phone" data-type="text"
                   data-pk="138" data-url="https://demo.s-cart.org/sc_admin/order/update"
                   data-title="Phone">{{$order->phone}}</p></td>
        </tr>

        <tr>
            <td class="td-title">Địa chỉ:</td>
            <td><a class="updateInfoRequired editable editable-click" data-name="address1" data-type="text"
                   data-pk="138" data-url="https://demo.s-cart.org/sc_admin/order/update"
                   data-title="Address 1">{{$order->address}}</a></td>
        </tr>

        <tr>
            <td class="td-title">Ghi chú:</td>
            <td><p class="updateInfoRequired editable editable-click" data-name="country" data-type="select"
                   data-pk="138" data-url="https://demo.s-cart.org/sc_admin/order/update" data-title="Country"
                   data-value="AU">{{ $order->note }}</a></td>
        </tr>


        </tbody>
    </table>
</div>
<div class="row">
    <div class="col-sm-12">
        <div class="box collapsed-box">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Sản phẩm</th>

                        <th class="product_price">Gía</th>
                        <th class="product_qty">Số lượng</th>
                        <th class="product_total">Thành tiền</th>

                    </tr>
                    </thead>
                    <tbody>
                        @foreach ($order_details as $order_detail)
                            <tr>
                                <td>{{ \App\Product::find($order_detail->pro_id)->name }}</td>
                                <td>{{ number_format(\App\Product::find($order_detail->pro_id)->price, 0,'','.') }} <sup>đ</sup></td>
                                <td>{{ $order_detail->qty }}</td>
                                <td>{{ number_format(\App\Product::find($order_detail->pro_id)->price * $order_detail->qty, 0,'','.') }} <sup>đ</sup></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>

        </div>
        <h3>Tổng tiền: {{ number_format($order->total, 0,'','.') }} <sup>đ</sup></h3>

    </div>

</div>
    </div>
@endsection

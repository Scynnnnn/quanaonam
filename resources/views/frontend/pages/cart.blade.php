@extends("frontend.master")
@section("content")
    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="/">Home</a></li>
                    <li class="active">Giỏ hàng mua sắm</li>
                </ol>
            </div>
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <thead>
                    <tr class="cart_menu">
                        <td class="image">Sản Phẩm</td>
                        <td class="description"></td>
                        <td class="price">Đơn giá</td>
                        <td class="quantity">Số lượng</td>
                        <td class="total">Thành tiền</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($cartContent as $item)
                        <?php $product = DB::table('products')->where('id', '=', $item->id)->first(); ?>

                        <tr>
                        <td>
                            <a href=""><img style="width: 150px; height: 100px" src="{{ asset('uploads/products/'.$product->image) }}" alt=""></a>
                        </td>
                        <td class="cart_description">
                            <p>{{ $item->name }}</p>
                            <p>Web ID: {{ $item->id }}</p>
                        </td>
                        <td class="cart_price">
                            <p>{{ number_format($item->price, 0, ',', '.') }}đ</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <div class="floatleft">
                                <input class="cart_quantity_input inputsoluong floatleft" type="text" name="quantity" value="{{ $item->quantity }}" autocomplete="off" size="2">
                                </div>
                                <div style="padding-left: 20px" id_pro ="{{ $item->id }}" class="floatleft width50 btn-update-cart">
                                    <button style="padding: 3px 10px;    margin-left: 10px;" name="submit" type="submit" class="btn_df btn_table_td_rf_del btn-sm">
                                        <i class="fa fa-refresh"></i></button>
                                </div>
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">{{ number_format($item->price * $item->quantity, 0, ',', '.') }} đ</p>
                        </td>
                        <td class="cart_delete">
                            <a id_pro ="{{ $item->id }}" class="cart_quantity_delete btn_df btn_table_td_rf_del" href=""><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    <tr>
                        <td colspan="7" class="textright_text">
                            <div class="sum_price_all" style="font-size: 20px">
                                <span class="text_price">Tổng tiền</span>:
                                <span class="text_price color_red">{{ number_format(Cart::getSubTotal(), 0, '.', ',') }} đ</span>
                            </div>
                        </td>
                        

                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="shopper-informations" style="margin-bottom: 70px">
                <div class="row">
                    <div class="col-sm-8">
                    <a class="btn btn-primary" href="{{ route('checkout') }}">Tiếp tục</a>
                    </div>
{{--                    <div class="col-sm-8">--}}
{{--                        <div class="shopper-info">--}}
{{--                            <p>Thông tin khách hàng</p>--}}
{{--                            <form action="{{ route('order.post_order') }}">--}}
{{--                                <input type="text" placeholder="Họ tên" value="@if(auth()->guard('web')->user()){{ auth()->guard('web')->user()->name }} @endif">--}}
{{--                                <input type="text" placeholder="Số điện thoại">--}}
{{--                                <input type="text" placeholder="Địa chỉ nhận hàng">--}}
{{--                            <a class="btn btn-primary" href="">Tiếp tục</a>--}}



                                        
{{--                            </form>--}}
{{--                        </div>--}}
{{--                    </div>--}}

                </div>
            </div>
        </div>
    </section>
@endsection

@section("script")
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function () {
            var url = "{{ route('cart.update_cart') }}";
            $(".btn-update-cart").on("click", function () {
                var id  = $(this).attr('id_pro');
                var qty = parseInt($(this).prev('div[class="floatleft"]').find('input[name="quantity"]').val());

                $.ajax({

                    type: "POST",
                    url: url,
                    data: {id: id, qty: qty},
                    success: function (data) {
                        window.location.href = "/cart";

                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            });

            $(".btn_df").on("click", function () {
                var id = $(this).attr('id_pro');
                var url = "{{ route('cart.remove_cart') }}";
                $.ajax({


                    type: "POST",
                    url: url,
                    data: {id: id},
                    success: function (data) {
                        window.location.href = "/cart";

                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            });
        });
    </script>
@endsection

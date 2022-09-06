<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> 0336 810 146 </a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> shopquanaoabc@gmail.com</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="{{ asset('/') }}"><img src="{{ asset('images/home/logo.png') }}" alt=""/></a>
                    </div>

                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
{{--                            <li><a href="#"><i class="fa fa-user"></i> Tài khoản </a></li>--}}
                            <?php  $cartContent = Cart::getContent()->sort(); ?>

                            <li><a href="{{ route('cart') }}"><i class="fa fa-shopping-cart"> {{ $cartContent->count() }}</i> Giỏ hàng </a></li>
                            @if(!auth()->guard('web')->user())
                                <li class=""><a href='{{ route('login') }}'>Đăng nhập</a></li>
{{--                                <li class=""><a href='{{ route('register') }}'>Đăng kí</a></li>--}}
                            @else
                                <li class="">
                                    <span>Xin chào, {{ auth()->guard('web')->user()->name }}</span>
                                    <a href='{{ route('my.order') }}'>Đơn hàng của tôi</a>
                                    <a href='{{ route('logout') }}'>Đăng xuất</a>
                                </li>
                            @endif

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <?php $cates = DB::table('categories')->get(); ?>

                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/" class="{{ Route::is('pages.home') ? 'active' : '' }}">Home</a></li>
{{--                            <li class="dropdown"><a href="#">Danh mục sản phẩm<i class="fa fa-angle-down"></i></a>--}}
{{--                                <ul role="menu" class="sub-menu">--}}
{{--                                    @foreach($cates as $item)--}}
{{--                                    <li><a href="{{ route('sanpham.getdanhmuc',['id' => $item->id, 'slug' => $item->slug]) }}">{{ $item->name }}</a></li>--}}
{{--                                    @endforeach--}}
{{--                                </ul>--}}
                            </li>
                            <li><a href="{{ route('get.list_post') }}" class="{{ Route::is('get.list_post') ? 'active' : '' }}">Tin tức</a></li>

                            <li><a href="{{ route('get_contact') }}" class="{{ Route::is('get_contact') ? 'active' : '' }}">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <form class="search_form" method="POST" action="{{ route('search') }}">
                        @csrf
                    <div class="search_box pull-right">
                        <input type="text" name="key" placeholder="Search" style="background-image:none" />
                                            <button style="border: none;position: absolute;
    right: 16px;
    border: none;
    top: 6px;" type="submit"><i class="fa fa-search"></i></button>

                    </div>
                    </form>


                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->

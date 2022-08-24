@extends('backend.master')
@section("title-page", "Thống kế")
@section("title-description", "Doanh thu từ $from đến $to")
@section('content')
    <!--    --><?php //$open = "slides"?>
    <?php $now = Carbon\Carbon::now();
    ?>
    <form action="{{ route('report.post_ban_hang') }}" method="post">
        @csrf
        <label for="start">Ngày bắt đầu:</label>

            <input type="date" id="start" name="start_date"
       >

        <label for="start" style="margin-left: 30px;">Ngày kết thúc:</label>

            <input type="date" id="start" name="end_date"
       >
       <br>
      {{--   <label for="">Tháng</label>
        <input value="{{ $now->month }}" type="number" min="1" max="12" name="thang"> --}}
        <button type="submit">Thống kê</button>
    </form>
    <div class="table table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Số lượng bán</th>
                <th>Tổng tiền</th>
                <th>Ngày tạo</th>

            </tr>
            </thead>
            <tbody>
            @foreach($status as $sta)
            @if($sta->status == 1)
            @foreach($data as $item)
                 
            <tr>
                <td>{{ $item->id }}</td>
                <td>{{ $item->product->name }}</td>
                <td>{{ $item->qty }}</td>
                <td>{{ number_format($item->product->price * $item->qty, 0, ',', '.') }} đ</td>
                <td>{{ $item->created_at}}
              
            </tr>
            @endforeach
            @endif
            @endforeach 
          
            </tbody>
        </table>
    </div>

@endsection

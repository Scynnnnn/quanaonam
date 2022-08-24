@extends('backend.master')
@section("title-page", "Thống kế")
@section('content')
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
{{--<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />--}}

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>
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


@endsection
@section("script")
    <script>
        $(function () {
            $("#example1").DataTable({
                "responsive": true, "lengthChange": true, "autoWidth": true,
                "buttons": ["copy", "csv", "excel", "pdf", "print", {
                    extend: 'colvis',
                    text: "Lọc cột hiển thị",
                }],
                // "order": [[ 2, "desc" ]],
                ordering: false,
                "pagingType": "full_numbers",
                "pageLength": 15,
                // "columnDefs": [ {
                //     "targets": 10,x
                //     "data": null,
                //     "defaultContent": "<button>Click!</button>"
                // } ],
                initComplete: function () {

                    $('.buttons-copy').addClass('btn btn-primary');
                    // $('.buttons-copy').html('<i class="fa fa-copy" />')
                    // $('.buttons-csv').html('<i class="fa fa-file-text-o" />')
                    // $('.buttons-excel').html('<i class="fa fa-file-excel-o" />')
                    // $('.buttons-pdf').html('<i class="fa fa-file-pdf-o" />')
                    // $('.buttons-print').html('<i class="fa fa-print" />')
                },
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

        });
        // $(".date-range").trig(function (){
        //     alert("dêdeded");
        // });
        $(function () {

            var start = moment().subtract(0, 'days');
            var end = moment();

            function cb(start, end) {
                $('#reportrange input').val(start.format('YYYY-MM-DD') + ' - ' + end.format('YYYY-MM-DD'));
            }

            $('#reportrange').daterangepicker({
                startDate: start,

                endDate: end,

                ranges: {

                    'Hôm nay': [moment(), moment()],
                    'Hôm qua': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '7 ngày trước': [moment().subtract(6, 'days'), moment()],
                    '30 ngày qua': [moment().subtract(29, 'days'), moment()],
                    'Tháng này': [moment().startOf('month'), moment().endOf('month')],
                    'Tháng trước': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Từ trước tới nay': [moment().subtract(360, 'days'), moment()],
                }
            }, cb);

            cb(start, end);
            $('li[data-range-key="Custom Range"]').text('Tùy chỉnh');
        });

    </script>

@endsection
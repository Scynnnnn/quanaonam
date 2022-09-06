@extends('backend.master')
@section("title-page", "Thống kế")
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div id="columnchart" style="height: 300px;"></div>
        <div id="piechart2" style="height: 500px;"></div>
        <div id="piechart3" style="height: 500px;"></div>
    </div>
</div>
<input type="hidden" id="data1" value="{{ json_encode($data1) }}" />
<input type="hidden" id="data2" value="{{ json_encode($data2) }}" />
<input type="hidden" id="data3" value="{{ json_encode($data3) }}" />
@endsection
@section('script')
{{-- Revenue by day --}}
<script type="text/javascript">
    var arr = [['Ngày', 'Doanh thu', { role: "style" }]];
    var orders = JSON.parse(document.getElementById("data1").value);
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    for(x of orders){
        arr.push([x.order_day,parseInt(x.total_price),'#3366CC'])
    }  
    function drawChart() {

        var data = google.visualization.arrayToDataTable(
            arr
        );

        var options = {
        title: 'Thống kê doanh thu theo ngày',
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('columnchart'));

        chart.draw(data, options);
    }
</script>
{{-- Revenue by month --}}
<script>
    var arr1 = [['Tháng', 'Doanh thu']];
    var orders = JSON.parse(document.getElementById("data2").value);
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    for(x of orders){
        arr1.push(['Tháng '+x.order_month,parseInt(x.total_price)])
    }  
    function drawChart() {

        var data = google.visualization.arrayToDataTable(
            arr1
        );

        var options = {
        title: "Thống kê doanh thu theo tháng trong năm {{ date('Y') }}"
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

        chart.draw(data, options);
    }
</script>
{{-- Revenue by year --}}
<script>
    var arr2 = [['Năm', 'Doanh thu']];
    var orders = JSON.parse(document.getElementById("data3").value);
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    for(x of orders){
        arr2.push(['Năm '+x.order_year,parseInt(x.total_price)])
    }  
    function drawChart() {

        var data = google.visualization.arrayToDataTable(
            arr2
        );

        var options = {
        title: 'Thống kê doanh thu theo năm'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart3'));

        chart.draw(data, options);
    }
</script>
@endsection
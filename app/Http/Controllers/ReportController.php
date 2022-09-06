<?php

namespace App\Http\Controllers;
use App\OrderDetail;
use App\Order;
use DB;

use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index()
    {
        return view('backend.report.list-month');
    }

    public function getBanHangThang(Request $request)
    {
        $from = $request->start_date;
        $to = $request->end_date;

        $status = DB::table('orders')
        ->select('status')
        ->get();
        $data = OrderDetail::whereBetween('created_at', [$from . " 00:00:00", $to . " 23:59:59"])
                ->orderBy('id', 'DESC')
                ->get();

        $thang = $request->thang;
        // $data= OrderDetail::whereMonth('created_at', '=', $thang)->get();

        return view('backend.report.doanh-so-ban-thang', compact('data','thang','from','to','status'));
    }

    public function thongKeThang ()
    {
        return view('backend.report.thong-ke-thang');
    }

    public function reportDay(Request $request)
    {
        $month = $request->month;
        $data = \DB::select('SELECT DATE_FORMAT(o.created_at,"%d/%m/%Y") order_day, SUM(o.total) total_price FROM orders o WHERE o.status = 1 AND MONTH(o.created_at) = ? GROUP BY order_day', [$month]);
        return response()->json([
            'status' => 200,
            'data'    => $data
        ]);
    }
}

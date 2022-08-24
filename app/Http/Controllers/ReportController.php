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
}

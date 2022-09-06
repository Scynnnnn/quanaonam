<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('backend.report.list-month', function ($view) {
            $data1 = \DB::select(
                'SELECT DATE_FORMAT(o.created_at,"%d/%m/%Y") order_day, SUM(o.total) total_price FROM orders o WHERE o.status = 1 GROUP BY order_day'
            );
            $data2 =  \DB::select(
                'SELECT MONTH(o.created_at) order_month, SUM(o.total) total_price FROM orders o WHERE o.status = 1 GROUP BY order_month'
            );
            $data3 = \DB::select(
                'SELECT YEAR(o.created_at) order_year, SUM(o.total) total_price FROM orders o WHERE o.status = 1 GROUP BY order_year'
            );
            $view->with(['data1' => $data1, 'data2' => $data2, 'data3' => $data3]);
        });
        view()->composer('backend.orders.list', function ($view) {
            $data = \DB::select(
                'SELECT COUNT(*) order_count, o.status FROM orders o GROUP BY o.status'
            );
            foreach ($data as $k => $v) {
                $data[$k]->status = $v->status == 1 ? 'Đã xử lý' : 'Chưa xử lý';
            }
            $view->with(['data' => $data]);
        });
    }
}

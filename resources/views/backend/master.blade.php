@include("backend.layouts.head")

<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

@include("backend.layouts.header")
 <!-- Left side column. contains the sidebar -->
@include("backend.layouts.sidebar")

<!-- =============================================== -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                @yield("title-page")
                <small>@yield('title-description')</small>
            </h1>

        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">


                </div>
                <div class="box-body">
                    @yield("content")
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </section>
        <!-- /.content -->
    </div>
@include("backend.layouts.footer")
<!-- /.content-wrapper -->
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->


@extends('backend.master')
@section('title-page', 'Quản lý bình luận')
@section('sub-title-page', 'Danh sách bình luận')
@section('content')
    @include('messages')
    <div class="table table-responsive">
        <table class="table table-dark">
            <div class="form-group">
                <a href="{{ route('slides.get_add') }}" class="btn btn-primary">Create</a>
            </div>
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">links </th>
                <th scope="col">Ảnh </th>

                <th scope="col">Thao tác</th>
            </tr>
            </thead>
            <tbody>
            @foreach($slides  as $item)
                <tr>
                    <th scope="row">{{ $item->id }}</th>
                    <td>{{  $item->links }}</td>
                    <td>
                        <img src="{{ asset('uploads/slides/'.$item->image) }}" alt="" width="250px" height="150px">

                    </td>

                    <td>
                        <a href="{{ route('slides.get_edit', $item->id) }}" class="btn btn-primary"><i class="fa fa-edit"> Edit</i></a>
                        <a href="{{ route('slides.get_delete', $item->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa ?')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i> Xóa</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

    </div>
@endsection

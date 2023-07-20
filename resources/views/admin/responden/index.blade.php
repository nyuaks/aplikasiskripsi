@extends('admin.layouts.app')

@section('breadcrumb')
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="h1 text-dark">Responden Page</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="/home">Home</a></li>
          <li class="breadcrumb-item active">Daftar Responden</li>
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>
@endsection

@section('main')
<section class="content">
  <div class="card">
    <div class="card-header">
      @if(session('success'))
      <div class="alert alert-success" role="alert">
        {{ session('success') }}
      </div>
      @endif
    <div> <a href="{{ route('wa.send') }}"><button onclick="openLink()" type="button" class="btn btn-info">Kirim Info</button></a></div>
    </div>
    <div class="card-body">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">Nama Acara</th>
            <th scope="col">Nama Respon Pendengar</th>
            <th scope="col">No Telepon</th>
            <th scope="col">Respon Pendengar</th>
            <th scope="col">Request Lagu</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          @foreach ($respondens as $responden)
          <tr>
            <th scope="row">{{ $loop->iteration }}</th>
            <td>{!! $responden->acara->nama !!}</td>
            <td>{!! $responden->pendengar !!}</td>
            <td>{!! $responden->telepon !!}</td>
            <td>{!! $responden->respon_pendengar !!}</td>
            <td>{!! $responden->lagu !!}</td>
            <td><p class="starability-result" data-rating="{!! $responden->rating !!}"></p></td>
            <td>
            {{-- <a href="{{ route('wa.send',$responden->id) }}"><button onclick="openLink()" type="button" class="btn btn-info">Kirim Info</button></a> --}}
              <form action="{{ route('responden.destroy', $responden->id) }}" method="post" class="d-inline-block">
                @csrf
                @method('delete')
                <button class="btn btn-sm btn-danger" type="submit" onclick="return confirm('are you sure?')">Delete</button>
              </form>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
      {{ $respondens->links() }}
    </div>
  </div>
</section>
@endsection

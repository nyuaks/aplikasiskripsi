@extends('home.layouts.app')

@section('main')


@include('home.partials.navbar')
<section id="responden" class="mt-lg-5">
    <div class="container">
        <div class="section-title">
            <h2>Create Responden</h2>
        </div>

        <div class="row content">
            <form action="/g/responden" method="POST">
                @csrf
                <div class="row content">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="pendengar">Pendengar</label>
                            <input type="text" class="form-control @error('pendengar')
                            is-invalid
                        @enderror" id="pendengar" placeholder="Example: Luna" required autofocus value="{{ old('pendengar') }}" name="pendengar">
                            @error('pendengar')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="telepon">No HP</label>
                            <input type="text" class="form-control @error('telepon')
                            is-invalid
                        @enderror" id="telepon" placeholder="Example: 08XXXXXXXXXX" required value="{{ old('telepon') }}" name="telepon">
                            @error('telepon')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                </div>
        </div>
        <div class="row content">


        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="acara_id">Acara</label>
                    <select name="acara_id" id="acara_id" class="form-select form-select-lg">
                        @foreach($acaras as $acara)
                        @if(old('acara_id') == $acara->id)
                        <option value="{{ $acara->id }}" selected>{{ $acara->nama }}</option>
                        @else
                        <option value="{{ $acara->id }}">{{ $acara->nama }}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-6">
                <label for="respon_pendengar" class="input-group">Respon Pendengar</label>
                <textarea name="respon_pendengar" id="respon_pendengar" cols="50" rows="" class="input-group-text form-control @error('respon_pendengar')
                is_invalid
            @enderror"></textarea>
                @error('respon_pendengar')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>

        <div class="row content">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="lagu">Request Lagu</label>
                            <input type="text" class="form-control @error('lagu')
                            is-invalid
                        @enderror" id="lagu" placeholder="Example: Luna" required autofocus value="{{ old('lagu') }}" name="lagu">
                            @error('lagu')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
        </div>

        <div class="d-flex justify-content-center align-items-center">
            <button type="submit" class="btn btn-primary mt-3">Submit</button>
        </div>
        </form>

    </div>
    </div>
</section>
@endsection

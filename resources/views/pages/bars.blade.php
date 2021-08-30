@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen bars__screen')
@section('background-content', '')
@section('background-footer', 'custom__footer footer-bg__padding')

@section('section-title')
<div class="custom__screen--title">
  <div class="container-md">
    <div class="custom__screen--title-inner">
      <div class="main__section--title big__title">{{ $title }}</div>
    </div>
  </div>
</div>
@endsection

@section('section-content')
<div class="bars__section section">
  <div class="custom__container">
    <div class="container-md">

      @foreach($bars as $i => $bar)
      <div class="col-12 d-flex @if($i % 2 == 0) justify-content-end @else justify-content-start @endif bars__item">
        <div class="bars__bg">
          <img src="{{ asset('images/' . $bar->image) }}" alt="">
        </div>
        <div class="col-12 col-sm-6 d-flex flex-column justify-content-center">
          <div class="main__section--title bars-title">
            @if(getCurrentLang() === 'ru')
            {{ $bar->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $bar->name_en }}
            @else
            {{ $bar->name_kk }}
            @endif
            <div class="bars__title--line">
              <div class="center__line"></div>
            </div>
          </div>
          <div class="bars-text">
            @if(getCurrentLang() === 'ru')
              {{ $bar->desc_ru }}
            @elseif(getCurrentLang() === 'en')
              {{ $bar->desc_en }}
            @else
              {{ $bar->desc_kk }}
            @endif
          </div>
          <a class="bars-button block-button" href="{{ route('deliveries') }}">
            {{ getTranslate('menu') }}
          </a>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>
@endsection


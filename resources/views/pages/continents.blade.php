@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen continent__screen')
@section('background-content', '')
@section('background-footer', 'custom__footer footer-bg__padding')

@section('section-title')
<div class="custom__screen--title">
  <div class="container-md">
    <div class="custom__screen--title-inner">
      <div class="main__section--title big__title">
        {{ $title }}
      </div>
    </div>
  </div>
</div>
@endsection

@section('section-content')
<div class="continent__section section">
  <div class="container-md">
    <div class="continent__section--inner row">

      @foreach ($continents as $i => $continent)
      <div class="continent__item d-flex @if($i > 0) gy-3 gy-sm-5 @endif">
        <div class="col-12 col-sm-6 continent__image pe-0 pe-sm-3">
          <div class="continent__title d-block d-sm-none">
            @if(getCurrentLang() === 'ru')
            {{ $continent->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $continent->name_en }}
            @else
            {{ $continent->name_kk }}
            @endif
          </div>
          <div class="continent__image--inner">
            <img src="{{ asset('images/' . $continent->image) }}" alt="">
          </div>
        </div>
        <div class="col-12 col-sm-6 d-flex flex-column justify-content-center ps-0 ps-sm-3">
          <div class="continent__title d-none d-sm-block">
            @if(getCurrentLang() === 'ru')
            {{ $continent->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $continent->name_en }}
            @else
            {{ $continent->name_kk }}
            @endif
          </div>
          <div class="continent__text">
            <p>
              @if(getCurrentLang() === 'ru')
              {{ $continent->desc_ru }}
              @elseif(getCurrentLang() === 'en')
              {{ $continent->desc_en }}
              @else
              {{ $continent->desc_kk }}
              @endif
            </p>
            <p>{{ getTranslate('app') }}</p>
          </div>
          <a class="continent__button block-button" href="{{ route('deliveries.menu', $continent->id) }}">
            {{ getTranslate('menu') }}
          </a>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>
@endsection


@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen vip__screen')
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
<div class="vip__section section">
  <div class="container-md">
    <div class="row g-4">
      @foreach ($vips as $vip)
      <div class="col-12 col-sm-6">
        <div class="vip__item d-flex flex-column align-items-center justify-content-center">
          <div class="main__section--title vip-title">
            @if(getCurrentLang() === 'ru')
            {{ $vip->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $vip->name_en }}
            @else
            {{ $vip->name_kk }}
            @endif
          </div>
          <div data-tab="{{ $vip->name_en }}" class="vip-button block-button">
            {{ getTranslate('more') }}
          </div>
          <div class="image-bg">
            <img src="{{ asset('images/' . $vip->image) }}" alt="" />
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>
@endsection


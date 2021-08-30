@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen contacts__screen')
@section('background-content', '')
@section('background-footer', 'footer__common')

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
<div class="contacts__section section">
  <div class="container-md">
    <div class="row mb-3">
      <div class="col-12">
        <div class="contacts-title mb-2">{{ getTranslate('ourc') }}</div>
        <div class="contacts-text">
          @if(getCurrentLang() === 'ru')
          {{ $contact->desc_ru }}
          @elseif(getCurrentLang() === 'en')
          {{ $contact->desc_en }}
          @else
          {{ $contact->desc_kk }}
          @endif
        </div>
      </div>
    </div>
    <div class="row d-flex justify-content-lg-start justify-content-between gy-3">
      <div class="col-12 col-sm-4 col-lg-3">
        <div class="inner__contacts--title">{{ getTranslate('ourc') }}</div>
        <div class="inner-number my-2">
          <a href="tel:{{ $contact->phone }}">{{ $contact->phone }}</a>
        </div>
        <a class="inner-email" href="mailto:{{ $contact->email }}">{{ $contact->email }}</a>
      </div>
      <div class="col-12 col-sm-4 col-lg-2 offset-lg-1">
        <div class="inner__contacts--title">Адрес Gastrobara</div>
        <div class="inner-adress mt-2">
          @if(getCurrentLang() === 'ru')
          {{ $contact->address_ru }}
          @elseif(getCurrentLang() === 'en')
          {{ $contact->address_en }}
          @else
          {{ $contact->address_kk }}
          @endif
        </div>
      </div>
      <div class="col-12 col-sm-4 col-lg-3 offset-lg-1">
        <div class="inner__contacts--title">{{ getTranslate('wh') }}</div>
        <div class="inner-day my-2">
          {{ getDayLocale($contact->day_from, 'long') }} - {{ getDayLocale($contact->day_to, 'long') }}
        </div>
        <div class="inner-time">{{ getHI($contact->time_from) }} - {{ getHI($contact->time_to) }}</div>
      </div>
    </div>
  </div>
</div>
@endsection

@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen children__screen')
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
<div class="children__section section">
  <div class="relative-container">
    <div class="absolute__line--block">
      <div class="line-left"></div>
      <div class="line-center"></div>
      <div class="line-right"></div>
    </div>
    <div class="container-md">
      <div class="row gy-3">
        <div class="col-12">
          <div class="children-title">{{ getTranslate('ch_room') }}</div>
        </div>
        <div class="col-12 mt-4">
          <div class="children-text">
            @if(getCurrentLang() === 'ru')
            {!! $child->desc_ru ?? null !!}
            @elseif(getCurrentLang() === 'en')
            {!! $child->desc_en ?? null !!}
            @else
            {!! $child->desc_kk ?? null !!}
            @endif
          </div>
        </div>
      </div>
      <div class="row g-3 g-sm-4 mt-3 mb-5">
        @foreach (getChildHalls() as $child_hall)
        <div class="col-12 col-sm-6">
          <div class="children-image__up">
            <img src="{{ asset('images/' . $child_hall->image) }}" alt="">
          </div>
          <div class="children-image__title mt-3">
            @if(getCurrentLang() === 'ru')
              {{ $child_hall->name_ru }}
            @elseif(getCurrentLang() === 'en')
              {{ $child_hall->name_en }}
            @else
              {{ $child_hall->name_kk }}
            @endif
          </div>
        </div>
        @endforeach
      </div>
      <div class="row g-3 g-sm-4 mb-4">
        @foreach (getFeatures() as $feature)
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="children__item d-fle flex-column align-items-center">
            <div class="children__item--block">
              <div class="children__item--image">
                <img src="{{ asset('images/' . $feature->image) }}" alt="" />
              </div>
            </div>
            <div class="children__item--content mt-4">
              <div class="children__item--title">
                @if(getCurrentLang() === 'ru')
                  {{ $feature->name_ru }}
                @elseif(getCurrentLang() === 'en')
                  {{ $feature->name_en }}
                @else
                  {{ $feature->name_kk }}
                @endif
              </div>
              <div class="children__item--text mt-4">
                @if(getCurrentLang() === 'ru')
                  {{ $feature->desc_ru }}
                @elseif(getCurrentLang() === 'en')
                  {{ $feature->desc_en }}
                @else
                  {{ $feature->desc_kk }}
                @endif
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>
    </div>
  </div>
  <div class="container-md mt-5">
    <div class="row mb-4">
      <div class="col-12">
        <div class="children-text__bottom">
          @if(getCurrentLang() === 'ru')
            {!! $child->note_ru !!}
          @elseif(getCurrentLang() === 'en')
            {!! $child->note_en !!}
          @else
            {!! $child->note_kk !!}
          @endif
        </div>
      </div>
    </div>
    <div class="row g-3 gx-sm-4 d-flex flex-column-reverse flex-sm-row">
      <div class="col-12 col-sm-6 d-flex align-items-center justify-content-center">
        <div class="child__image">
          <img src="{{ asset('images/' . $child->image) }}" alt="">
        </div>
      </div>
      <div class="col-12 col-sm-6 d-flex flex-column justify-content-between">
        <div class="child-title__last mb-4">
          {{ getTranslate('ch_room') }}
          <div class="bars__title--line">
            <div class="center__line"></div>
          </div>
        </div>
        <div class="child-text__last">
          @if(getCurrentLang() === 'ru')
            {!! $child->tip_ru !!}
          @elseif(getCurrentLang() === 'en')
            {!! $child->tip_en !!}
          @else
            {!! $child->tip_kk !!}
          @endif
        </div>
      </div>
    </div>
  </div>
</div>
@endsection


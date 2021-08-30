@extends('layouts.master')

@section('title', getTranslate('home'))

@section('background-header', 'main__screen')
@section('background-content', 'first__main')
@section('background-footer', 'main__background--wrapper')

@section('section-title')
<div class="first__screen">
  <div class="container-md">
    @if(getCurrentLang() === 'ru')
    {!! $category->intro_ru !!}
    @elseif(getCurrentLang() === 'en')
    {!! $category->intro_en !!}
    @else
    {!! $category->intro_kk !!}
    @endif
    <a href="{{ route('deliveries') }}" class="main__button button">
      <span>{{ getTranslate('food_delivery') }}</span>
      <img src="{{ asset('icons/delivery-truck.svg') }}" alt="" />
    </a>
    <div class="mobile__firstScreen--elements">
      <div class="header__location">
        <a href="#">
          @include('assets.icons.location')
          <span>
            @if(getCurrentLang() === 'ru')
            {{ getContact()->address_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ getContact()->address_en }}
            @else
            {{ getContact()->address_kk }}
            @endif
          </span>
        </a>
      </div>
      <div class="header__phone">
        <a href="tel:{{ getContact()->phone }}">
          @include('assets.icons.phone')
          <span>{{ getContact()->phone }}</span>
        </a>
      </div>
    </div>
  </div>
</div>
@endsection

@section('section-content')
<div class="infinity-taste__section section">
  <div class="custom__container">
    <div class="container-md">
      <div class="main__section--title">
        @if(getCurrentLang() === 'ru')
          {{ getCategory('continents')->name_ru }}
        @elseif(getCurrentLang() === 'en')
          {{ getCategory('continents')->name_en }}
        @else
          {{ getCategory('continents')->name_kk }}
        @endif
      </div>
      <div class="row g-2 g-sm-4">
        @foreach ($continents as $continent)
        <a class="col-sm-6 col-12 taste__block" href="{{ route('deliveries.menu', $continent->id) }}">
          <div class="block__title">
          @if(getCurrentLang() === 'ru')
            {{ $continent->name_ru }}
          @elseif(getCurrentLang() === 'en')
            {{ $continent->name_en }}
          @else
            {{ $continent->name_kk }}
          @endif
          </div>
          <div class="block__image">
            <img src="{{ asset('images/' . $continent->image) }}" alt="" />
          </div>
        </a>
        @endforeach
      </div>
    </div>
  </div>
</div>

<div class="bars-gallery__section section">
  <div class="custom__container">
    <div class="container-md">
      <div class="bars-gallery__inner">
        <div class="main__section--title">
          @if(getCurrentLang() === 'ru')
            {{ getCategory('bars')->name_ru }}
          @elseif(getCurrentLang() === 'en')
            {{ getCategory('bars')->name_en }}
          @else
            {{ getCategory('bars')->name_kk }}
          @endif
        </div>
        <div class="bars-gallery__slider">
          @foreach (getBars() as $bar)
          <div class="bars-gallery__slider--item">
            <div class="gallery__slider--item-inner">
              <div class="bars-gallery__image">
                <img src="{{ asset('images/' . $bar->image)}}" alt="" />
              </div>
              <div class="bars-gallery__content">
                <div class="bars-gallery__text">
                  @if(getCurrentLang() === 'ru')
                    {{ $bar->desc_ru }}
                  @elseif(getCurrentLang() === 'en')
                    {{ $bar->desc_en }}
                  @else
                    {{ $bar->desc_kk }}
                  @endif
                </div>
                <a class="bars-gallery__button block-button">
                  {{ getTranslate('gtc') }}
                </a>
              </div>
            </div>
          </div>
          @endforeach
        </div>

        <div class="bars__gallery--nav-block">
          <div class="slider__button slider__button--left bars__slider--button">
            @include('assets.icons.arrow-left')
          </div>
          <div class="bars-gallery__navigation slider__navigation">
            @foreach (getBars() as $i => $bar)
            <div data-slide="{{ $i+=1 }}" class="slider__nav--item @if($i == 1) active-slide @endif"></div>
            @endforeach
          </div>
          <div class="slider__button slider__button--right active-arrow bars__slider--button">
            @include('assets.icons.arrow-right')
          </div>
        </div>
      </div>

      <div class="bars__gallery--tabs">
        <div class="row d-flex justify-content-between g-3">
          @foreach (getBars() as $i => $bar)
          <div
            data-slideN="{{ $i+=1 }}"
            data-tab="{{ $bar->name_en }}"
            class="col-12 col-sm-6 bars__gallery--tab">
            <div class="bars__gallery--tab-title">
              @if(getCurrentLang() === 'ru')
                {{ $bar->name_ru }}
              @elseif(getCurrentLang() === 'en')
                {{ $bar->name_en }}
              @else
                {{ $bar->name_kk }}
              @endif
            </div>
            <div class="bars__gallery--image">
              <img src="{{ asset('images/' . $bar->image) }}" alt="" />
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </div>
  </div>
</div>
@endsection


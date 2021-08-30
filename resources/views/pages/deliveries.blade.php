@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen delivery__screen')
@section('background-content', '')
@section('background-footer', 'kitchen__nav--footer-bg deliver-custom__footery custom__footer')

@section('section-title')
<div class="delivery__screen--block">
  <div class="container-md">
    <div class="delivery__screen--inner">
      <div class="delivery__screen--text">
        <h3>{{ $title }}</h3>
        <p>
          @if(getCurrentLang() === 'ru')
            {{ $delivery->desc_ru }}
          @elseif(getCurrentLang() === 'en')
            {{ $delivery->desc_en }}
          @else
            {{ $delivery->desc_kk }}
          @endif
        </p>
      </div>
      <div class="delivery__screen--contacts">
        <ul>
          <li>
            <a href="#" class="delivery__screen--location">
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
          </li>
          <li>
            <a href="#">
              @include('assets.icons.clock')
              <span>
                {{ getDayLocale(getContact()->day_from, 'short') }}-{{ getDayLocale(getContact()->day_to, 'short') }}&nbsp;&nbsp;{{ getHI(getContact()->time_from) }} - {{ getHI(getContact()->time_to) }}
              </span>
            </a>
          </li>
          <li>
            <a href="tel:{{ getContact()->phone }}">
              @include('assets.icons.phone')
              <span>{{ getContact()->phone }}</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
@endsection

@section('section-content')
<!-- /.slider -->
<div class="delivery__page--slider-block">
  <div class="container-md">
    <div class="delivery__page--slider">
      <div class="delivery__page__inner--slider">
        @foreach (getContinents() as $item)
        <a
          class="delivery__page-slide__item @if($continent->id == $item->id) active-tab @endif"
          href="{{ route('deliveries.menu', $item->id) }}">
          <div class="delivery__page-slide__image">
            <img src="{{ asset('images/' . $item->image) }}" alt="" />
          </div>
          <div class="delivery__page-slide__title">
            @if(getCurrentLang() === 'ru')
              {{ $item->name_ru }}
            @elseif(getCurrentLang() === 'en')
              {{ $item->name_en }}
            @else
              {{ $item->name_kk }}
            @endif
          </div>
        </a>
        @endforeach
      </div>
    </div>
    <div class="delivery__page-slider--nav">
      <div class="slider__button slider__button--left">
        @include('assets.icons.arrow-left')
      </div>
      <div class="delivery__slider--hr">
        @include('assets.icons.hr')
      </div>
      <div class="slider__button slider__button--right active-arrow">
        @include('assets.icons.arrow-right')
      </div>
    </div>
  </div>
</div>

<!-- /.menu -->
<div class="georgian__kitchen--section section">
  @foreach ($continent->assortments as $assortment)
    @if($menu->where('assortment_id', $assortment->id)->count())
    <!-- /.title -->
    <div class="container-md">
      <div class="georgian__kitchen--inner">
        <div class="main__section--title">
          @if(getCurrentLang() === 'ru')
          {{ $continent->name_ru }} - {{ $assortment->name_ru }}
          @elseif(getCurrentLang() === 'en')
          {{ $continent->name_en }} - {{ $assortment->name_en }}
          @else
          {{ $continent->name_kk }} - {{ $assortment->name_kk }}
          @endif
        </div>
      </div>
    </div>

    <!-- /.list -->
    <div class="georgian__kitchen--list">
      <div class="container-md">
        <div class="row g-4">
        @foreach ($menu as $item)
          @if($assortment->id == $item->assortment_id)
            <div class="col-sm-4 col-12">
              <div class="georgian__kitchen--item">
                {{-- @csrf --}}
                <div class="kitchen-image">
                  <img src="{{ asset('images/' . $item->image) }}" alt="" />
                </div>
                <div class="kitchen-title">
                  @if(getCurrentLang() === 'ru')
                  {{ $item->name_ru }}
                  @elseif(getCurrentLang() === 'en')
                  {{ $item->name_en }}
                  @else
                  {{ $item->name_kk }}
                  @endif
                </div>
                <p class="georgian__kitchen--text">
                  @if(getCurrentLang() === 'ru')
                  {{ $item->desc_ru }}
                  @elseif(getCurrentLang() === 'en')
                  {{ $item->desc_en }}
                  @else
                  {{ $item->desc_kk }}
                  @endif
                </p>
                <input type="hidden" name="dish_id" value="{{ $item->id }}">
                <input type="hidden" name="count"   value="1">
                <div class="kitchen-price">{{ number_format($item->price, 0, ',', ' '); }} тг</div>
                <a
                  id="bk-buy"
                  class="kitchen-button block-button"
                  data-id="{{ $item->id }}"
                  {{-- href="{{ route('carts.create', $item->id) }}" --}}
                  >
                  {{ getTranslate('buy') }}
                </a>
              </div>
            </div>
          @endif
        @endforeach
        </div>
      </div>
    </div>
    @endif
  @endforeach
</div>

@if($order && $order->getFullPrice() > 0)
<a class="basket" href="{{ route('carts') }}">
  @include('assets.icons.shop')
  <span data-count="{{ $order->dishes()->count() }}">
    {{ number_format($order->getFullPrice(), 0, ',', ' ') }} тг
  </span>
</a>
@endif
@endsection


@extends('layouts.master')

@section('title', getTranslate('order_in'))

@section('background-header', 'cart__screen')
@section('background-content', 'is_cart')
@section('background-footer', 'custom__footer')

@section('section-content')
<div class="order__title--section">
  <div class="container-md">
    <div class="order__title--inner">
      <p>{{ getTranslate('order_in_3') }}</p>
      <a href="{{ route('deliveries') }}" class="order__button">
        @include('assets.icons.back')
        <span class="d-none d-lg-flex">{{ getTranslate('back') }}</span>
      </a>
    </div>
  </div>
</div>
<div class="cart__section section">
  <div class="container-md">
    @if($order == null || $order->getFullPrice() == 0)
    <h2 class="d-flex justify-content-center">
      {{ getTranslate('cart_empty') }}
    </h2>
    @else
    <div class="cart__inner--block d-flex justify-content-between">
      <div class="form__wrapper">
        <div class="form__step">
          {{ getTranslate('step') }}
          {{ $order->step }}
        </div>
        <div class="form__wrapper--inner">
          <!-- /.steps -->
          <div class="form__wrapper--form">

            <!-- /.step-1 -->
            <div class="form__contacts @if($order->step == 1) active @endif">
              <form action="{{ route('carts.step_1', $order->id) }}" method="POST">
                @csrf
                <div class="form__contacts--title form-title">
                  1. {{ getTranslate('contact_data') }}
                </div>
                <div class="form__contacts--block">
                  <div class="row gx-4 gy-3">
                    <div class="input__wrapper col-12 col-lg-6 d-flex flex-column">
                      <label for="first_name">{{ getTranslate('first_name') }}</label>
                      <input
                        name="first_name"
                        id="first_name"
                        type="text"
                        value="{{ $order->first_name ?? null }}"
                        placeholder="{{ getTranslate('fn_hint') }}"
                        required />
                    </div>
                    <div class="input__wrapper col-12 col-lg-6 d-flex flex-column">
                      <label for="last_name">{{ getTranslate('last_name') }}</label>
                      <input
                        name="last_name"
                        id="last_name"
                        type="text"
                        value="{{ $order->last_name ?? null }}"
                        placeholder="{{ getTranslate('ln_hint') }}"
                        required />
                    </div>
                    <div class="input__wrapper col-12 col-lg-6 d-flex flex-column" >
                      <label for="phone">{{ getTranslate('phone') }}</label>
                      <input
                        name="phone"
                        id="phone"
                        type="text"
                        value="{{ $order->phone ?? null }}"
                        placeholder="{{ getTranslate('input_phone') }}"
                        required />
                    </div>
                    <input type="hidden" name="step" value="2">
                  </div>
                  <button class="form__contacts--button block-button">
                    {{ getTranslate('further') }}
                  </button>
                </div>
              </form>
            </div>
            <!-- /.step-2 -->
            <div class="form__delivery @if($order->step == 2) active @endif">
              <form action="{{ route('carts.step_2', $order->id) }}" method="POST">
                @csrf
                <div class="form-title">2. {{ getTranslate('delivery') }}</div>
                <div class="form__delivery--block">
                  <div class="row gx-4 gy-3">
                    <div class="input__wrapper col-12 col-lg-6 d-flex flex-column">
                      <label for="city">{{ getTranslate('city') }}</label>
                      <input
                        name="city"
                        id="city"
                        type="text"
                        placeholder="{{ getTranslate('atyrau') }}"
                        value="{{ $order->city ?? null }}"
                        required />
                    </div>
                    <div class="input__wrapper col-12 col-lg-6 d-flex flex-column">
                      <label for="street">{{ getTranslate('address_delivery') }}</label>
                      <input
                        name="street"
                        id="street"
                        type="text"
                        value="{{ $order->street ?? null }}"
                        placeholder="{{ getTranslate('address_delivery') }}"
                        required />
                    </div>
                    <div class="input__wrapper col-12 col-lg-4 d-flex flex-column">
                      <label for="dom">{{ getTranslate('house') }}</label>
                      <input
                        name="dom"
                        id="dom"
                        type="text"
                        value="{{ $order->dom ?? null }}"
                        placeholder="{{ getTranslate('house') }}"
                        required />
                    </div>
                    <div class="input__wrapper col-12 col-lg-4 d-flex flex-column">
                      <label for="corp">{{ getTranslate('corp') }}</label>
                      <input
                        name="corp"
                        id="corp"
                        type="text"
                        value="{{ $order->corp ?? null }}"
                        placeholder="{{ getTranslate('corp') }}" />
                    </div>
                    <div class="input__wrapper col-12 col-lg-4 d-flex flex-column">
                      <label for="flat">{{ getTranslate('flat') }}</label>
                      <input
                        name="flat"
                        id="flat"
                        type="number"
                        value="{{ $order->flat ?? null }}"
                        placeholder="{{ getTranslate('flat') }}" />
                    </div>
                    <input type="hidden" name="step" value="3">
                  </div>
                  <button class="form__contacts--button block-button">
                    {{ getTranslate('further') }}
                  </button>
                </div>
              </form>
            </div>
            <!-- /.step-3 -->
            <div class="form__payment @if($order->step == 3) active @endif">
              <div class="form-title">3. {{ getTranslate('pay') }}</div>
              <div class="form__payment--inner d-flex">
                <div class="form__payment--item position-relative">
                  <label class="payment-item" for="pay-card">
                    @include('assets.icons.credit')
                  </label>
                  <input type="radio" class="payment-toggle" id="pay-card" name="pay" value="1">
                  <p>{{ getTranslate('credit') }}</p>
                </div>
                <div class="form__payment--item position-relative">
                  <label class="payment-item" for="pay-cash">
                    @include('assets.icons.cash')
                  </label>
                  <input type="radio" class="payment-toggle" id="pay-cash" name="pay" value="2">
                  <p>{{ getTranslate('cash') }}</p>
                </div>
                <input type="hidden" id="pay-output">
                <input type="hidden" id="total" value="{{ $order->getFullPrice() }}">
              </div>
            </div>

            <input
              class="form__submit block-button"
              id="confirm-order"
              type="submit"
              data-id="{{ $order->id }}"
              @if($order->step != 3)
              disabled="disabled"
              style="cursor: not-allowed; background: #DEDEDE"
              @endif
              value="{{ getTranslate('buy') }}" />
          </div>
        </div>
      </div>
      <div class="cart__wrapper">
        <div class="cart__wrapper--text">
          {{ getTranslate('cart_count') }} <strong>{{ $order->dishes()->count() }}</strong> {{ getTranslate('items') }}:
        </div>
        <div class="cart__wrapper--inner">
          <!-- /.list -->
          <div class="cart__items">
            @foreach ($order->dishes as $dish)
            <div class="cart__item">
              <div class="cart__image">
                <img src="{{ asset('images/' . $dish->image) }}" alt="" />
              </div>
              <div class="cart__content">
                <div class="cart__desc">
                  @if(getCurrentLang() === 'ru')
                    {{ $dish->name_ru }}
                  @elseif(getCurrentLang() === 'en')
                    {{ $dish->name_en }}
                  @else
                    {{ $dish->name_kk }}
                  @endif
                </div>
                <div class="cart__btn--wrapper">
                  <div class="cart__btn">
                    <div class="cart__btn--nav cart-minus" data-id="{{ $dish->id }}">
                      @include('assets.icons.minus')
                    </div>
                    <div class="cart__input">
                      <input type="number" value="{{ $dish->pivot->count }}" />
                    </div>
                    <div class="cart__btn--nav cart-plus" data-id="{{ $dish->id }}">
                      @include('assets.icons.plus')
                    </div>
                  </div>
                  <div class="cart__per--price">х {{ number_format($dish->price, 0, ',', ' '); }} тг</div>
                </div>
                <div class="cart__overall--price">
                  {{ number_format($dish->getPriceForCount(), 0, ',', ' ') }} тг
                </div>
              </div>
              <div class="cart__delete cart-destroy" data-id="{{ $dish->id }}">
                @include('assets.icons.trash')
              </div>
            </div>
            @endforeach
          </div>

          <!-- /.total -->
          <div class="cart__price">
            <div class="cart__price--sum">
              <p>{{ getTranslate('sum') }}</p>
              <div class="price__sum">
                <div class="sum-text">{{ getTranslate('total') }}</div>
                <div class="sum-num">{{ number_format($order->getFullPrice(), 0, ',', ' ') }} тг</div>
              </div>
            </div>
            <div class="cart__price--pay">
              <div class="pay-text">{{ getTranslate('to_pay') }}</div>
              <div class="pay-num">{{ number_format($order->getFullPrice(), 0, ',', ' ') }} тг</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    @endif
  </div>
</div>
@endsection

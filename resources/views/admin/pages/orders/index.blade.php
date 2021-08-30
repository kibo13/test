@extends('admin.layouts.master')

@section('title', getTranslate('orders'))

@section('content')
<section id="order-index" class="bk-page section info-form">
  <h2 class="mb-3">{{ getTranslate('orders') }}</h2>

  <div class="bk-orders-table">
    <table
      id="order-table"
      class="bk-table table table-bordered table-responsive">
      <thead class="thead-light">
        <tr>
          <th scope="col">#</th>
          <th scope="col" class="w-25" style="min-width: 100px;">{{ getTranslate('order_code') }}</th>
          <th scope="col" class="w-25" style="min-width: 150px;">{{ getTranslate('order_time') }}</th>
          <th scope="col" class="w-25" style="min-width: 200px;">{{ __('main.customer') }}</th>
          <th scope="col" class="w-25" style="min-width: 150px;">{{ getTranslate('sum') }}</th>
          <th scope="col" style="min-width: 70px;">{{ getTranslate('pay') }}</th>
          <th scope="col" style="min-width: 100px;">{{ getTranslate('state') }}</th>
          <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th>
        </tr>
      </thead>
      <tbody>
        @foreach($orders as $key => $order)
        <tr>
          <td>{{ $key+=1 }}</td>
          <td>#{{ $key+=1 }}</td>
          <td>
            {{ getDMY($order->date_in) }}
            <span class="bk-small">
              {{ getHI($order->time_in) }}
            </span>
          </td>
          <td>
            <div class="bk-btn-info">
              <span class="font-weight-bold">{{ $order->first_name }} {{ $order->last_name }}</span><br />
              <span class="font-weight-bold">тел:</span> {{ $order->phone }}<br />
              <span class="font-weight-bold">город:</span> {{ $order->city }} <br />
              <span class="font-weight-bold">адрес:</span> {{ $order->street }} {{ $order->dom }} - {{ $order->corp }} {{ $order->flat }}
              <button
                class="bk-btn-info__triangle bk-btn-info__triangle--down"
                title="{{ getTranslate('more') }}">
              </button>
            </div>
          </td>
          <td>
            {{ number_format($order->total, 2, ',', ' ') }} тг
          </td>
          <td>
            @if($order->pay == 1)
            <span class="orders-icon" title="{{ getTranslate('order_card') }}">
              @include('assets.icons.credit')
            </span>
            @else
            <span class="orders-icon" title="{{ getTranslate('order_cash') }}">
              @include('assets.icons.cash')
            </span>
            @endif
          </td>
          <td>
            @if($order->check > 0)
            <span class="text-success">Оплачен</span>
            @else
            <span class="text-danger">Не оплачен</span>
            @endif
          </td>
          <td>
            <div class="bk-btn-actions">
              <a
                class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
                href="{{ route('orders.edit', $order) }}"
                data-tip="{{ getTranslate('t_edit') }}" ></a>
              <a
                class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
                href="javascript:void(0)"
                data-id="{{ $order->id }}"
                data-table-name="order"
                data-toggle="modal"
                data-target="#bk-delete-modal"
                data-tip="{{ getTranslate('t_delete') }}" ></a>
            </div>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</section>
@endsection

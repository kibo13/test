@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="dish-index" class="bk-page section">
  <h2 class="mb-3">{{ $title }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('continents.dishes.create') }}" >
      {{ getTranslate('create') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('continents.index') }}" >
      {{ getTranslate('kitchens') }}
    </a>
  </div>

  <table
    id="dish-table"
    class="bk-table table table-bordered table-responsive">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col" class="w-100" style="min-width: 300px;">{{ getTranslate('menu') }}</th>
        <th scope="col" class="" style="min-width: 120px;">{{ getTranslate('price') }}</th>
        <th scope="col" class="no-sort" style="min-width: 120px;">{{ getTranslate('photo') }}</th>
        <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($dishes as $key => $dish)
      <tr>
        <td scope="row">{{ $key+=1 }}</td>
        <td>
          <ul class="bk-dishes-list">
            <li class="bk-dishes-list__title">
              @if(getCurrentLang() === 'ru')
              {{ $dish->name_ru }}
              @elseif(getCurrentLang() === 'en')
              {{ $dish->name_en }}
              @else
              {{ $dish->name_kk }}
              @endif
            </li>
            <li class="bk-dishes-list__category">
              @if(getCurrentLang() === 'ru')
              {{ $dish->continent->name_ru }} / {{ $dish->assortment->name_ru }}
              @elseif(getCurrentLang() === 'en')
              {{ $dish->continent->name_en }} / {{ $dish->assortment->name_en }}
              @else
              {{ $dish->continent->name_kk }} /  {{ $dish->assortment->name_kk }}
              @endif
            </li>
            <li class="bk-dishes-list__desc">
              @if(getCurrentLang() === 'ru')
              {{ $dish->desc_ru }}
              @elseif(getCurrentLang() === 'en')
              {{ $dish->desc_en }}
              @else
              {{ $dish->desc_kk }}
              @endif
            </li>
          </ul>
        </td>
        <td>
          {{ number_format($dish->price, 2, ',', ' '); }} &#8376;
        </td>
        <td>
          @if(is_null($dish->image))
          <a href="{{ route('continents.dishes.edit', $dish) }}">
            <span class="text-primary">{{ getTranslate('upload') }}</span>
          </a>
          @else
          <div class="bk-dishes-zoom">
            {{ getTranslate('look') }}
            <img
              class="bk-dishes-zoom__img"
              src="{{ asset('images/' . $dish->image) }}"
              alt=""
              tabindex="0">
            <div class="bk-dishes-zoom__bg"></div>
          </div>
          @endif
        </td>
        <td>
          <div class="bk-btn-actions">
            <a
              class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
              href="{{ route('continents.dishes.edit', $dish) }}"
              data-tip="{{ getTranslate('t_edit') }}" ></a>
            <a
              class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
              href="javascript:void(0)"
              data-id="{{ $dish->id }}"
              data-table-name="dish"
              data-toggle="modal"
              data-target="#bk-delete-modal"
              data-tip="{{ getTranslate('t_delete') }}" ></a>
          </div>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>

</section>
@endsection

@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="continent-index" class="bk-page section info-form">
  <h2 class="mb-3">{{ getTranslate('kitchens') }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('continents.create') }}" >
      {{ getTranslate('create') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('continents.assortments.index') }}" >
      {{ getTranslate('categories') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('continents.dishes.index') }}">
      {{ getTranslate('menu') }}
    </a>
  </div>

  <div class="bk-continents-table">
    <table
      id="continent-table"
      class="bk-table table table-bordered table-responsive">
      <thead class="thead-light">
        <tr>
          <th scope="col">#</th>
          <th scope="col" class="w-25">{{ getTranslate('t_name') }}</th>
          <th scope="col" class="w-25">{{ getTranslate('categories') }}</th>
          <th scope="col" class="w-50 no-sort">{{ getTranslate('t_desc') }}</th>
          <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th></th>
        </tr>
      </thead>
      <tbody>
        @foreach($continents as $key => $continent)
        <tr>
          <td scope="row">{{ $key+=1 }}</td>
          <td>
            @if(getCurrentLang() === 'ru')
            {{ $continent->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $continent->name_en }}
            @else
            {{ $continent->name_kk }}
            @endif
          </td>
          <td>
            <div class="bk-btn-info">
              @foreach ($continent->assortments as $assortment)
                @if(getCurrentLang() === 'ru')
                {{ $assortment->name_ru }}<br>
                @elseif(getCurrentLang() === 'en')
                {{ $assortment->name_en }}<br>
                @else
                {{ $assortment->name_kk }}<br>
                @endif
              @endforeach
              <button
                class="bk-btn-info__triangle bk-btn-info__triangle--down"
                title="{{ getTranslate('more') }}">
              </button>
            </div>
          </td>
          <td>
            <div class="bk-btn-info">
              @if(getCurrentLang() === 'ru')
              {{ $continent->desc_ru }}
              @elseif(getCurrentLang() === 'en')
              {{ $continent->desc_en }}
              @else
              {{ $continent->desc_kk }}
              @endif
              <button
                class="bk-btn-info__triangle bk-btn-info__triangle--down"
                title="{{ getTranslate('more') }}">
              </button>
            </div>
          </td>
          <td>
            <div class="bk-btn-actions">
              <a
                class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
                href="{{ route('continents.edit', $continent) }}"
                data-tip="{{ getTranslate('t_edit') }}" ></a>
              <a
                class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
                href="javascript:void(0)"
                data-id="{{ $continent->id }}"
                data-table-name="continent"
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

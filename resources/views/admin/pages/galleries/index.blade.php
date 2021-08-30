@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="gallery-index" class="bk-page section info-form">
  <h2 class="mb-3">{{ $title }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('bars.galleries.create') }}" >
      {{ getTranslate('create') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('bars.index') }}" >
      {{ getTranslate('bars') }}
    </a>
  </div>

  <ul class="bk-gallery">
    @foreach($galleries as $gallery)
    <li class="bk-gallery__item">
      <img
        class="bk-gallery__img"
        src="{{asset('images/' . $gallery->image)}}"
        alt="" >
      <p class="bk-gallery__info">
        @if(getCurrentLang() === 'ru')
        {{ $gallery->bar->name_ru }}
        @elseif(getCurrentLang() === 'en')
        {{ $gallery->bar->name_en }}
        @else
        {{ $gallery->bar->name_kk }}
        @endif
      </p>
      <div class="bk-gallery__crud bk-btn-actions">
        <a
          class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
          href="{{ route('bars.galleries.edit', $gallery) }}"
          data-tip="Редактировать" ></a>
        <a
          class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
          href="javascript:void(0)"
          data-id="{{ $gallery->id }}"
          data-table-name="gallery"
          data-toggle="modal"
          data-target="#bk-delete-modal"
          data-tip="Удалить" ></a>
      </div>
    </li>
    @endforeach
  </ul>

</section>
@endsection

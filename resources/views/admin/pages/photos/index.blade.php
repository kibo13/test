@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="photo-index" class="bk-page section info-form">
  <h2 class="mb-3">{{ $title }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('vips.photos.create') }}" >
      {{ getTranslate('create') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('vips.index') }}" >
      {{ getTranslate('cabins') }}
    </a>
  </div>

  <ul class="bk-photo">
    @foreach($photos as $photo)
    <li class="bk-photo__item">
      <img
        class="bk-photo__img"
        src="{{asset('images/' . $photo->image)}}"
        alt="" >
      <p class="bk-photo__info">
        @if(getCurrentLang() === 'ru')
        {{ $photo->vip->name_ru }}
        @elseif(getCurrentLang() === 'en')
        {{ $photo->vip->name_en }}
        @else
        {{ $photo->vip->name_kk }}
        @endif
      </p>
      <div class="bk-photo__crud bk-btn-actions">
        <a
          class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
          href="{{ route('vips.photos.edit', $photo) }}"
          data-tip="Редактировать" ></a>
        <a
          class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
          href="javascript:void(0)"
          data-id="{{ $photo->id }}"
          data-table-name="photo"
          data-toggle="modal"
          data-target="#bk-delete-modal"
          data-tip="Удалить" ></a>
      </div>
    </li>
    @endforeach
  </ul>

</section>
@endsection

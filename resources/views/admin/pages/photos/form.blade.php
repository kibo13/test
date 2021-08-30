@extends('admin.layouts.master')

@section('title', __('main.photos'))

@section('content')
<section id="photo-form" class="section img-form">
  <h2 class="mb-3">
    @isset($photo)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    @isset($photo)
      action="{{ route('vips.photos.update', $photo) }}"
    @else
      action="{{ route('vips.photos.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($photo)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.vip_id -->
          <h6 class="bk-form__title">{{ getTranslate('cabins') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <select class="form-control" name="vip_id">
              <option disabled selected>{{ getTranslate('select_cabin') }}</option>
              @foreach($vips as $vip)
              <option
                value="{{ $vip->id }}"
                @isset($photo)
                  @if($photo->vip_id == $vip->id)
                    selected
                  @endif
                @endisset>
                @if(getCurrentLang() === 'ru')
                {{ $vip->name_ru }}
                @elseif(getCurrentLang() === 'en')
                {{ $vip->name_en }}
                @else
                {{ $vip->name_kk }}
                @endif
              </option>
              @endforeach
            </select>
          </div>

          <!-- /.image -->
          <h6 class="bk-form__title">{{ getTranslate('image') }}</h6>
          <div class="bk-form__field-300">
            <div class="bk-form__file">
              <input
                class="form-control"
                id="upload-file"
                name="note"
                type="text"
                value="@isset($photo) {{ $photo->note }} @endisset"
                placeholder="{{ getTranslate('nofile') }}" />

              <button
                type="button"
                class="btn btn-primary bk-form__file--btn">
                {{ getTranslate('upload') }}
              </button>

              <input
                class="form-control-file bk-form__file--upload"
                id="image"
                name="image"
                type="file"
                accept="image/*" >
            </div>
          </div>

        </div>
      </div>

      <div class="form-group">
        <button
          class="btn btn-outline-success"
          type="submit">{{ getTranslate('save') }}</button>
        <a
          class="btn btn-outline-secondary"
          href="{{ route('vips.photos.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

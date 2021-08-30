@extends('admin.layouts.master')

@section('title', getTranslate('galleries'))

@section('content')
<section id="gallery-form" class="section img-form">
  <h2 class="mb-3">
    @isset($gallery)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    @isset($gallery)
      action="{{ route('bars.galleries.update', $gallery) }}"
    @else
      action="{{ route('bars.galleries.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($gallery)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.bar_id -->
          <h6 class="bk-form__title">{{ getTranslate('bars') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <select class="form-control" name="bar_id">
              <option disabled selected>{{ getTranslate('select_bar') }}</option>
              @foreach($bars as $bar)
              <option
                value="{{ $bar->id }}"
                @isset($gallery)
                  @if($gallery->bar_id == $bar->id)
                    selected
                  @endif
                @endisset>
                @if(getCurrentLang() === 'ru')
                {{ $bar->name_ru }}
                @elseif(getCurrentLang() === 'en')
                {{ $bar->name_en }}
                @else
                {{ $bar->name_kk }}
                @endif
              </option>
              @endforeach
            </select>
          </div>

          <!-- /.image -->
          <h6 class="bk-form__title">{{ getTranslate('image') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <div class="bk-form__file">
              <input
                class="form-control"
                id="upload-file"
                name="note"
                type="text"
                value="@isset($gallery) {{ $gallery->note }} @endisset"
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

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($gallery) ? $gallery->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($gallery) ? $gallery->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full">
            <textarea class="form-control" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($gallery) ? $gallery->desc_kk : null) }}</textarea>
          </div>

        </div>
      </div>

      <div class="form-group">
        <button
          class="btn btn-outline-success"
          type="submit">{{ getTranslate('save') }}</button>
        <a
          class="btn btn-outline-secondary"
          href="{{ route('bars.galleries.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

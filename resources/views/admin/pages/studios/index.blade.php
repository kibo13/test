@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="studio-form" class="section img-form">
  <h2 class="mb-3"> {{ getTranslate('edit_record') }}</h2>

  @if(session()->has('success'))
  <div class="alert alert-success" role="alert">
    {{ session()->get('success') }}
  </div>
  @endif

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    action="{{ route('studios.update', $studio) }}">

    @csrf

    <div>
      @method('PUT')

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.category_id -->
          <input
            class="form-control mb-2"
            id="category_id"
            type="hidden"
            name="category_id"
            value="{{ isset($studio) ? $studio->category_id : $category->id }}">

          <!-- /.intro_ru -->
          <h6 class="bk-form__title">{{ getTranslate('intro') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="intro_ru" placeholder="Введите описание">{{ old('intro_ru', isset($studio) ? $studio->intro_ru : null) }}</textarea>
          </div>

          <!-- /.intro_en -->
          <h6 class="bk-form__title">{{ getTranslate('intro') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="intro_en" placeholder="Enter a description">{{ old('intro_en', isset($studio) ? $studio->intro_en : null) }}</textarea>
          </div>

          <!-- /.intro_kk -->
          <h6 class="bk-form__title">{{ getTranslate('intro') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="intro_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('intro_kk', isset($studio) ? $studio->intro_kk : null) }}</textarea>
          </div>

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($studio) ? $studio->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($studio) ? $studio->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($studio) ? $studio->desc_kk : null) }}</textarea>
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
                value="@isset($studio) {{ $studio->note }} @endisset"
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
      </div>
    </div>
  </form>
</section>
@endsection

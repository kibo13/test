@extends('admin.layouts.master')

@section('title', getTranslate('home'))

@section('content')
<section id="home-form" class="section img-form">
  <h2 class="mb-3"> {{ getTranslate('home') }}</h2>

  @if(session()->has('success'))
  <div class="alert alert-success" role="alert">
    {{ session()->get('success') }}
  </div>
  @endif

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    action="{{ route('admin.update', $home) }}">

    @csrf

    <div>
      @method('PUT')

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.intro_ru -->
          <h6 class="bk-form__title">{{ getTranslate('intro') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="intro_ru" placeholder="Введите описание">{{ old('intro_ru', isset($home) ? $home->intro_ru : null) }}</textarea>
          </div>

          <!-- /.intro_en -->
          <h6 class="bk-form__title">{{ getTranslate('intro') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="intro_en" placeholder="Enter a description">{{ old('intro_en', isset($home) ? $home->intro_en : null) }}</textarea>
          </div>

          <!-- /.intro_kk -->
          <h6 class="bk-form__title">{{ getTranslate('intro') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="intro_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('intro_kk', isset($home) ? $home->intro_kk : null) }}</textarea>
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
                value="@isset($home) {{ $home->note }} @endisset"
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

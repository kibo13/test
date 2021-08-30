@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="about-form" class="section">
  <h2 class="mb-3"> {{ getTranslate('edit_record') }}</h2>

  @if(session()->has('success'))
  <div class="alert alert-success" role="alert">
    {{ session()->get('success') }}
  </div>
  @endif

  <form
    class="bk-form"
    method="POST"
    action="{{ route('about.update', $about) }}">

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
            value="{{ isset($about) ? $about->category_id : $category->id }}">

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($about) ? $about->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($about) ? $about->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($about) ? $about->desc_kk : null) }}</textarea>
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

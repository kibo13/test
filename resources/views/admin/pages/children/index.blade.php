@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="child-form" class="section img-form">
  <h2 class="mb-3"> {{ getTranslate('edit_record') }}</h2>

  @if(session()->has('success'))
  <div class="alert alert-success" role="alert">
    {{ session()->get('success') }}
  </div>
  @endif

  <div class="bk-btn-group">
    <a class="btn btn-outline-secondary" href="{{ route('children.features.index') }}">
      {{ getTranslate('features') }}
    </a>
  </div>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    action="{{ route('children.update', $child) }}">

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
            value="{{ isset($child) ? $child->category_id : $category->id }}">

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($child) ? $child->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($child) ? $child->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($child) ? $child->desc_kk : null) }}</textarea>
          </div>

          <!-- /.note_ru -->
          <h6 class="bk-form__title">{{ getTranslate('note') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="note_ru" placeholder="Введите примечание">{{ old('note_ru', isset($child) ? $child->note_ru : null) }}</textarea>
          </div>

          <!-- /.note_en -->
          <h6 class="bk-form__title">{{ getTranslate('note') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="note_en" placeholder="Enter a note">{{ old('note_en', isset($child) ? $child->note_en : null) }}</textarea>
          </div>

          <!-- /.note_kk -->
          <h6 class="bk-form__title">{{ getTranslate('note') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="note_kk" placeholder="Жазбаны енгізіңіз">{{ old('note_kk', isset($child) ? $child->note_kk : null) }}</textarea>
          </div>

          <!-- /.tip_ru -->
          <h6 class="bk-form__title">{{ getTranslate('comment') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="tip_ru" placeholder="Введите комментарий">{{ old('tip_ru', isset($child) ? $child->tip_ru : null) }}</textarea>
          </div>

          <!-- /.tip_en -->
          <h6 class="bk-form__title">{{ getTranslate('comment') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="tip_en" placeholder="Enter a comment">{{ old('tip_en', isset($child) ? $child->tip_en : null) }}</textarea>
          </div>

          <!-- /.tip_kk -->
          <h6 class="bk-form__title">{{ getTranslate('comment') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control tiny-mce" name="tip_kk" placeholder="Пікіріңізді енгізіңіз">{{ old('tip_kk', isset($child) ? $child->tip_kk : null) }}</textarea>
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
                value="@isset($child) {{ $child->note }} @endisset"
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

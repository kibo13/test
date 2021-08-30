@extends('admin.layouts.master')

@section('title', getTranslate('news'))

@section('content')
<section id="news-form" class="section img-form">
  <h2 class="mb-3">
    @isset($news)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    @isset($news)
      action="{{ route('news.update', $news) }}"
    @else
      action="{{ route('news.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($news)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.date_public -->
          <h6 class="bk-form__title">{{ getTranslate('date_publish') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="date_public"
              type="date"
              name="date_public"
              value="{{ $news->date_public ?? null }}"
              placeholder="Введите тематику"
              required />
          </div>

          <!-- /.name_ru -->
          <h6 class="bk-form__title">{{ getTranslate('top') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_ru"
              type="text"
              name="name_ru"
              value="@isset($news) {{ $news->name_ru }} @endisset"
              placeholder="Введите тематику"
              required />
          </div>

          <!-- /.name_en -->
          <h6 class="bk-form__title">{{ getTranslate('top') }} [EN]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_en"
              type="text"
              name="name_en"
              value="@isset($news) {{ $news->name_en }} @endisset"
              placeholder="Enter a topic"
              required />
          </div>

          <!-- /.name_kk -->
          <h6 class="bk-form__title">{{ getTranslate('top') }} [KK]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_kk"
              type="text"
              name="name_kk"
              value="@isset($news) {{ $news->name_kk }} @endisset"
              placeholder="Тақырыпты тақырыптық"
              required />
          </div>

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($news) ? $news->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($news) ? $news->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($news) ? $news->desc_kk : null) }}</textarea>
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
                value="@isset($news) {{ $news->note }} @endisset"
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
          href="{{ route('news.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="continent-form" class="section img-form">
  <h2 class="mb-3">
    @isset($continent)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    @isset($continent)
      action="{{ route('continents.update', $continent) }}"
    @else
      action="{{ route('continents.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($continent)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.category_id -->
          <input
            class="form-control mb-2"
            id="category_id"
            type="hidden"
            name="category_id"
            value="{{ isset($continent) ? $continent->category_id : $category->id }}"
          >

          <!-- /.name_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_ru"
              type="text"
              name="name_ru"
              value="@isset($continent) {{ $continent->name_ru }} @endisset"
              placeholder="Введите название"
              required />
          </div>

          <!-- /.name_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [EN]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_en"
              type="text"
              name="name_en"
              value="@isset($continent) {{ $continent->name_en }} @endisset"
              placeholder="Enter a title"
              required />
          </div>

          <!-- /.name_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [KK]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_kk"
              type="text"
              name="name_kk"
              value="@isset($continent) {{ $continent->name_kk }} @endisset"
              placeholder="Тақырыпты енгізіңіз"
              required />
          </div>

          <!-- /.assortments -->
          <h6 class="bk-form__title">{{ getTranslate('categories') }}</h6>
          <div class="bk-form__field-full mb-2">
            <ul class="bk-continents-list">
            @foreach($assortments as $id => $assortment)
            <li class="col-sm-auto custom-control custom-checkbox">
              <input
                class="custom-control-input"
                id="{{ $id }}"
                type="checkbox"
                name="assortments[]"
                value="{{ $assortment->id }}"
                @isset($continent)
                  @if($continent->assortments->where('id', $assortment->id)->count())
                    checked="checked"
                  @endif
                @endisset>
              <label class="custom-control-label" for="{{ $id }}">
                @if(getCurrentLang() === 'ru')
                {{ $assortment->name_ru }}
                @elseif(getCurrentLang() === 'en')
                {{ $assortment->name_en }}
                @else
                {{ $assortment->name_kk }}
                @endif
              </label>
            </li>
            @endforeach
            </ul>
          </div>

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($continent) ? $continent->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($continent) ? $continent->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($continent) ? $continent->desc_kk : null) }}</textarea>
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
                value="@isset($continent) {{ $continent->note }} @endisset"
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
          href="{{ route('continents.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

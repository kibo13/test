@extends('admin.layouts.master')

@section('title', getTranslate('halls'))

@section('content')
<section id="hall-form" class="section img-form">
  <h2 class="mb-3">
    @isset($hall)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    @isset($hall)
      action="{{ route('halls.update', $hall) }}"
    @else
      action="{{ route('halls.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($hall)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.type -->
          <h6 class="bk-form__title">{{ getTranslate('type_halls') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <select class="form-control" name="type_hall_id">
              <option disabled selected>{{ getTranslate('select_type') }}</option>
              @foreach($hall_types as $type)
              <option
                value="{{ $type->id }}"
                @isset($hall)
                  @if($hall->type_hall_id == $type->id)
                    selected
                  @endif
                @endisset>
                @if(getCurrentLang() === 'ru')
                {{ $type->name_ru }}
                @elseif(getCurrentLang() === 'en')
                {{ $type->name_en }}
                @else
                {{ $type->name_kk }}
                @endif
              </option>
              @endforeach
            </select>
          </div>

          <!-- /.name_ru -->
          <h6 class="bk-form__title">{{ getTranslate('section') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_ru"
              type="text"
              name="name_ru"
              value="@isset($hall) {{ $hall->name_ru }} @endisset"
              placeholder="Новая запись"
              required />
          </div>

          <!-- /.name_en -->
          <h6 class="bk-form__title">{{ getTranslate('section') }} [EN]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_en"
              type="text"
              name="name_en"
              value="@isset($hall) {{ $hall->name_en }} @endisset"
              placeholder="New record"
              required />
          </div>

          <!-- /.name_kk -->
          <h6 class="bk-form__title">{{ getTranslate('section') }} [KK]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_kk"
              type="text"
              name="name_kk"
              value="@isset($hall) {{ $hall->name_kk }} @endisset"
              placeholder="Жаңа жазба"
              required />
          </div>

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($hall) ? $hall->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($hall) ? $hall->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($hall) ? $hall->desc_kk : null) }}</textarea>
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
                value="@isset($hall) {{ $hall->note }} @endisset"
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
          href="{{ route('halls.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

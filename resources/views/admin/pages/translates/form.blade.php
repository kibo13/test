@extends('admin.layouts.master')

@section('title', getTranslate('translates'))

@section('content')
<section id="translate-form" class="section">
  <h2 class="mb-3">
    @isset($translate)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    @isset($translate)
      action="{{ route('translates.update', $translate) }}"
    @else
      action="{{ route('translates.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($translate)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.code -->
          <input
            class="form-control mb-2"
            type="hidden"
            name="code"
            value="@isset($translate) {{ $translate->code }} @endisset"
            autocomplete="off"
          >

          <!-- /.name_ru -->
          <h6 class="bk-form__title">[RU]</h6>
          <div class="bk-form__field-full mb-2">
            <input
              class="form-control"
              id="name_ru"
              type="text"
              name="name_ru"
              value="@isset($translate) {{ $translate->name_ru }} @endisset"
              autocomplete="off" />
          </div>

          <!-- /.name_en -->
          <h6 class="bk-form__title">[EN]</h6>
          <div class="bk-form__field-full mb-2">
            <input
              class="form-control"
              id="name_en"
              type="text"
              name="name_en"
              value="@isset($translate) {{ $translate->name_en }} @endisset"
              autocomplete="off" />
          </div>

          <!-- /.name_kk -->
          <h6 class="bk-form__title">[KK]</h6>
          <div class="bk-form__field-full mb-2">
            <input
              class="form-control"
              id="name_kk"
              type="text"
              name="name_kk"
              value="@isset($translate) {{ $translate->name_kk }} @endisset"
              autocomplete="off" />
          </div>

          <!-- /.note -->
          <h6 class="bk-form__title">Примечание</h6>
          <div class="bk-form__field-full">
            <textarea class="form-control" name="note">{{ old('note', isset($translate) ? $translate->note : null) }}</textarea>
          </div>

        </div>
      </div>

      <div class="form-group">
        <button
          class="btn btn-outline-success"
          type="submit">{{ getTranslate('save') }}</button>
        <a
          class="btn btn-outline-secondary"
          href="{{ route('translates.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

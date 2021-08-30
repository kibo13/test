@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="hall-type-form" class="section">
  <h2 class="mb-3">
    @isset($assortment)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    @isset($assortment)
      action="{{ route('continents.assortments.update', $assortment) }}"
    @else
      action="{{ route('continents.assortments.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($assortment)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.name_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_ru"
              type="text"
              name="name_ru"
              value="@isset($assortment) {{ $assortment->name_ru }} @endisset"
              placeholder="Новая запись"
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
              value="@isset($assortment) {{ $assortment->name_en }} @endisset"
              placeholder="New record"
              required />
          </div>

          <!-- /.name_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [KK]</h6>
          <div class="bk-form__field-300">
            <input
              class="form-control"
              id="name_kk"
              type="text"
              name="name_kk"
              value="@isset($assortment) {{ $assortment->name_kk }} @endisset"
              placeholder="Жаңа жазба"
              required />
          </div>

        </div>
      </div>

      <div class="form-group">
        <button
          class="btn btn-outline-success"
          type="submit">{{ getTranslate('save') }}</button>
        <a
          class="btn btn-outline-secondary"
          href="{{ route('continents.assortments.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

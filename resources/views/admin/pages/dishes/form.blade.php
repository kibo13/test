@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="dish-form" class="section img-form valid-form">
  <h2 class="mb-3">
    @isset($dish)
      {{ getTranslate('edit_record') }}
    @else
    {{ getTranslate('add_record') }}
    @endisset
  </h2>

  <form
    class="bk-form"
    method="POST"
    enctype="multipart/form-data"
    @isset($dish)
      action="{{ route('continents.dishes.update', $dish) }}"
    @else
      action="{{ route('continents.dishes.store') }}"
    @endisset>
    @csrf
    <div>
      @isset($dish)
        @method('PUT')
      @endisset

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">

          <!-- /.continent_id -->
          <h6 class="bk-form__title">{{ getTranslate('kitchen') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <select class="form-control" id="continent_id" name="continent_id">
              <option disabled selected>{{ getTranslate('select_kitchen') }}</option>
              @foreach($continents as $continent)
              <option
                value="{{ $continent->id }}"
                @isset($dish)
                  @if($dish->continent_id == $continent->id)
                    selected
                  @endif
                @endisset>
                @if(getCurrentLang() === 'ru')
                {{ $continent->name_ru }}
                @elseif(getCurrentLang() === 'en')
                {{ $continent->name_en }}
                @else
                {{ $continent->name_kk }}
                @endif
              </option>
              @endforeach
            </select>
          </div>

          <!-- /.lang -->
          <input
            class="form-control mb-2"
            id="lang"
            type="hidden"
            value="{{ getCurrentLang() }}"
          >

          <!-- /.assortment_id -->
          <h6 class="bk-form__title">{{ getTranslate('category') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <select class="form-control" id="assortment_id" name="assortment_id">
              <option disabled selected>{{ getTranslate('select_cat') }}</option>
              @isset($dish)
              @foreach ($dish->continent->assortments as $assortment)
              <option
                value="{{ $assortment->id }}"
                @if($dish->assortment_id == $assortment->id)
                  selected
                @endif>
                @if(getCurrentLang() === 'ru')
                {{ $assortment->name_ru }}
                @elseif(getCurrentLang() === 'en')
                {{ $assortment->name_en }}
                @else
                {{ $assortment->name_kk }}
                @endif
              </option>
              @endforeach
              @endisset
            </select>
          </div>

          <!-- /.name_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control"
              id="name_ru"
              type="text"
              name="name_ru"
              value="@isset($dish) {{ $dish->name_ru }} @endisset"
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
              value="@isset($dish) {{ $dish->name_en }} @endisset"
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
              value="@isset($dish) {{ $dish->name_kk }} @endisset"
              placeholder="Тақырыпты енгізіңіз"
              required />
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
                value="@isset($dish) {{ $dish->note }} @endisset"
                placeholder="{{ getTranslate('nofile') }}"
                autocomplete="off" />

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

          <!-- /.price -->
          <h6 class="bk-form__title">
            {{ getTranslate('price') }}
            <span class="bk-small">&#8376;</span>
          </h6>
          <div class="bk-form__field-100 mb-2">
            <input
              class="form-control bk-number"
              id="price"
              type="text"
              name="price"
              value="{{ $dish->price ?? null }}"
              placeholder="1 700"
              required />
          </div>

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($dish) ? $dish->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($dish) ? $dish->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full">
            <textarea class="form-control" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($dish) ? $dish->desc_kk : null) }}</textarea>
          </div>

        </div>
      </div>

      <div class="form-group">
        <button
          class="btn btn-outline-success"
          type="submit">{{ getTranslate('save') }}</button>
        <a
          class="btn btn-outline-secondary"
          href="{{ route('continents.dishes.index') }}">
          {{ getTranslate('back') }}
        </a>
      </div>
    </div>
  </form>
</section>
@endsection

@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="contact-form" class="section">
  <h2 class="mb-3"> {{ getTranslate('edit_record') }}</h2>

  @if(session()->has('success'))
  <div class="alert alert-success" role="alert">
    {{ session()->get('success') }}
  </div>
  @endif

  <form
    class="bk-form"
    method="POST"
    action="{{ route('contacts.update', $contact) }}">

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
            value="{{ isset($contact) ? $contact->category_id : $category->id }}">

          <!-- /.desc_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [RU]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_ru" placeholder="Введите описание">{{ old('desc_ru', isset($contact) ? $contact->desc_ru : null) }}</textarea>
          </div>

          <!-- /.desc_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [EN]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_en" placeholder="Enter a description">{{ old('desc_en', isset($contact) ? $contact->desc_en : null) }}</textarea>
          </div>

          <!-- /.desc_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_desc') }} [KK]</h6>
          <div class="bk-form__field-full mb-2">
            <textarea class="form-control" name="desc_kk" placeholder="Сипаттаманы енгізіңіз">{{ old('desc_kk', isset($contact) ? $contact->desc_kk : null) }}</textarea>
          </div>

          <!-- /.name_ru -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="name_ru" type="text" name="name_ru" value="@isset($contact) {{ $contact->name_ru }} @endisset" placeholder="Введите название" required />
          </div>

          <!-- /.name_en -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [EN]</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="name_en" type="text" name="name_en" value="@isset($contact) {{ $contact->name_en }} @endisset" placeholder="Введите название" required />
          </div>

          <!-- /.name_kk -->
          <h6 class="bk-form__title">{{ getTranslate('t_name') }} [KK]</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="name_kk" type="text" name="name_kk" value="@isset($contact) {{ $contact->name_kk }} @endisset" placeholder="Введите название" required />
          </div>

          <!-- /.address_ru -->
          <h6 class="bk-form__title">{{ getTranslate('address') }} [RU]</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="address_ru" type="text" name="address_ru" value="@isset($contact) {{ $contact->address_ru }} @endisset" placeholder="Введите адрес" required />
          </div>

          <!-- /.address_en -->
          <h6 class="bk-form__title">{{ getTranslate('address') }} [EN]</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="address_en" type="text" name="address_en" value="@isset($contact) {{ $contact->address_en }} @endisset" placeholder="Enter a address" required />
          </div>

          <!-- /.address_kk -->
          <h6 class="bk-form__title">{{ getTranslate('address') }} [KK]</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="address_kk" type="text" name="address_kk" value="@isset($contact) {{ $contact->address_kk }} @endisset" placeholder="Мекенжайды енгізіңіз" required />
          </div>

          <!-- /.email -->
          <h6 class="bk-form__title">{{ getTranslate('email') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="email" type="email" name="email" value="@isset($contact) {{ $contact->email }} @endisset" placeholder="Мекенжайды енгізіңіз" required />
          </div>

          <!-- /.site -->
          <h6 class="bk-form__title">{{ getTranslate('site') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <input class="form-control" id="site" type="text" name="site" value="@isset($contact) {{ $contact->site }} @endisset" required />
          </div>

          <!-- /.phones -->
          <h6 class="bk-form__title">{{ getTranslate('phones') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <label class="mb-0 font-weight-bold mb-1" style="font-size: 12px;">{{ getTranslate('ph_main') }}</label>
            <input class="form-control" id="phone" type="text" name="phone" value="{{ $contact->phone ?? null }}" placeholder="Мекенжайды енгізіңіз" required />

            <label class="mb-0 font-weight-bold mb-1" style="font-size: 12px;">{{ getTranslate('ph_adm') }}</label>
            <input class="form-control" id="adm_phone" type="text" name="adm_phone" value="{{ $contact->adm_phone ?? null }}" placeholder="Мекенжайды енгізіңіз" />

            <label class="mb-0 font-weight-bold mb-1" style="font-size: 12px;">{{ getTranslate('ph_ds') }}</label>
            <input class="form-control" id="ds_phone" type="text" name="ds_phone" value="{{ $contact->ds_phone ?? null }}" placeholder="Мекенжайды енгізіңіз" />
          </div>



          <!-- /.working hours -->
          <h6 class="bk-form__title">{{ getTranslate('wh') }}</h6>
          <div class="d-flex flex-column" style="grid-gap: 5px;">
            <label class="mb-0 font-weight-bold" style="font-size: 12px;">{{ getTranslate('start') }}</label>
            <div class="d-flex mb-2" style="grid-gap: 5px;">
              <div class="bk-form__field-200">
                <select class="form-control" id="day_from" name="day_from" style="font-size: 14px;">
                  @foreach(getDays() as $day)
                  <option
                    value="{{ $day->id }}"
                    @isset($contact)
                      @if($contact->day_from == $day->id)
                        selected
                      @endif
                    @endisset>
                    @if(getCurrentLang() === 'ru')
                      {{ $day->long_ru }}
                    @elseif(getCurrentLang() === 'en')
                      {{ $day->long_en }}
                    @else
                      {{ $day->long_kk }}
                    @endif
                  </option>
                  @endforeach
                </select>
              </div>
              <div class="bk-form__field-100">
                <input
                  class="form-control"
                  style="font-size: 14px;"
                  id="time_from"
                  type="time"
                  name="time_from"
                  value="{{ $contact->time_from ?? null }}"
                  required />
              </div>
            </div>
            <label class="mb-0 font-weight-bold" style="font-size: 12px;">{{ getTranslate('end') }}</label>
            <div class="d-flex" style="grid-gap: 5px;">
              <div class="bk-form__field-200">
                <select class="form-control" id="day_to" name="day_to" style="font-size: 14px;">
                  @foreach(getDays() as $day)
                  <option
                    value="{{ $day->id }}"
                    @isset($contact)
                      @if($contact->day_to == $day->id)
                        selected
                      @endif
                    @endisset>
                    @if(getCurrentLang() === 'ru')
                      {{ $day->long_ru }}
                    @elseif(getCurrentLang() === 'en')
                      {{ $day->long_en }}
                    @else
                      {{ $day->long_kk }}
                    @endif
                  </option>
                  @endforeach
                </select>
              </div>
              <div class="bk-form__field-100">
                <input
                  class="form-control"
                  style="font-size: 14px;"
                  id="time_to"
                  type="time"
                  name="time_to"
                  value="{{ $contact->time_to ?? null }}"
                  required />
              </div>
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

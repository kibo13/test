@extends('admin.layouts.master')

@section('title', getTranslate('profile'))

@section('content')
<section id="profile-index" class="section">
  <h2 class="mb-3"> {{ getTranslate('edit_record') }}</h2>

  @if(session()->has('success'))
  <div class="alert alert-success" role="alert">
    {{ session()->get('success') }}
  </div>
  @endif

  <form
    class="bk-form"
    method="POST"
    action="{{ route('users.update', $user) }}" >
    @csrf
    <div>
      @method('PUT')

      <div class="bk-form__wrapper" data-info="{{ getTranslate('f_info') }}">
        <div class="bk-form__block">
          <!-- /.login -->
          <h6 class="bk-form__title">{{ __('auth.name') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control @error('name') is-invalid @enderror"
              id="name"
              type="text"
              name="name"
              value="@isset($user) {{ $user->name }} @endisset"
              required />

            @error('name')
            <span class="bk-form__alert invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
            </span>
            @enderror
          </div>

          <!-- /.email -->
          <h6 class="bk-form__title">{{ __('auth.email') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control @error('email') is-invalid @enderror"
              id="email"
              type="email"
              name="email"
              value="@isset($user) {{ $user->email }} @endisset"
              required />

            @error('email')
            <span class="bk-form__alert invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
            </span>
            @enderror
          </div>

          <!-- /.password -->
          <h6 class="bk-form__title">{{ __('auth.password') }}</h6>
          <div class="bk-form__field-300 mb-2">
            <input
              class="form-control @error('password') is-invalid @enderror"
              id="password"
              type="password"
              name="password"
              placeholder="{{ __('auth.new_pass') }}"
              autocomplete="off" />
          </div>

          <div class="bk-form__field-300">
            <input
              class="form-control @error('password') is-invalid @enderror"
              id="confirm-password"
              type="password"
              name="password_confirmation"
              placeholder="{{ __('auth.confirm_pass') }}"
              autocomplete="off" />

            @error('password')
            <span class="bk-form__alert invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
            </span>
            @enderror
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

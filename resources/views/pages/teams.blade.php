@extends('layouts.master')

@section('title', $title)

@section('background-header', 'custom__screen team__screen')
@section('background-content', '')
@section('background-footer', 'custom__footer footer-bg__padding')

@section('section-title')
<div class="custom__screen--title">
  <div class="container-md">
      <div class="custom__screen--title-inner">
          <div class="main__section--title big__title">
            {{ $title }}
          </div>
      </div>
  </div>
</div>
@endsection

@section('section-content')
<div class="team__section section">
  <div class="container-md">
    <div class="row-cst gx-2 gy-4">
      @foreach ($teams as $team)
      <div class="team-container-item">
        <div class="team__item d-flex flex-column">
          <div class="team__image">
            <img src="{{ asset('images/' . $team->image) }}" alt="">
          </div>
          <div class="team-title">
            @if(getCurrentLang() === 'ru')
            {{ $team->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $team->name_en }}
            @else
            {{ $team->name_kk }}
            @endif
          </div>
          <div class="team-prof">
            {{ getTranslate('t_chef') }}
          </div>
          <div class="team-desc">
            @if(getCurrentLang() === 'ru')
            {{ $team->desc_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $team->desc_en }}
            @else
            {{ $team->desc_kk }}
            @endif
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>
@endsection


<div class="mobile__menu closed">
  <div class="container-md">
    <div class="our__menu--title">{{ getTranslate('o_menu') }}</div>
    <div class="mobile__menu--slider">
      <div class="menu__slider--title">
        @if(getCurrentLang() === 'ru')
          {{ getCategory('continents')->name_ru }}
        @elseif(getCurrentLang() === 'en')
          {{ getCategory('continents')->name_en }}
        @else
          {{ getCategory('continents')->name_kk }}
        @endif
      </div>
      <div class="menu__inner--slider">
        @foreach (getContinents() as $item)
        <a class="slide__item" href="{{ route('deliveries.menu', $item->id) }}">
          <div class="slide__image">
            <img src="{{ asset('images/' . $item->image) }}" alt="" />
          </div>
          <div class="slide__title">
            @if(getCurrentLang() === 'ru')
              {{ $item->name_ru }}
            @elseif(getCurrentLang() === 'en')
              {{ $item->name_en }}
            @else
              {{ $item->name_kk }}
            @endif
          </div>
        </a>
        @endforeach
      </div>
    </div>
    <div class="mobile__slider--nav">
      <div class="slider__button slider__button--left">
        @include('assets.icons.arrow-left')
      </div>
      <div class="slider__navigation">
        <div data-slide="1" class="slider__nav--item active-slide"></div>
        <div data-slide="2" class="slider__nav--item"></div>
        <div data-slide="3" class="slider__nav--item"></div>
        <div data-slide="4" class="slider__nav--item"></div>
        <div data-slide="5" class="slider__nav--item"></div>
      </div>
      <div class="slider__button slider__button--right active-arrow">
        @include('assets.icons.arrow-right')
      </div>
    </div>
    <nav class="mobile__menu--nav">
      <ul>
        <li><a href="{{ route('about') }}">О нас</a></li>
        <li><a href="{{ route('continents') }}">4 континента вкуса</a></li>
        <li><a href="{{ route('studios') }}">Кулинарная Студия</a></li>
        <li><a href="{{ route('bars') }}">Галерея Баров</a></li>
        <li><a href="{{ route('vips') }}">VIP Кабины</a></li>
        <li><a href="{{ route('children') }}">Дети</a></li>
        <li><a href="{{ route('deliveries') }}">Доставка</a></li>
        <li><a href="{{ route('teams') }}">Команда</a></li>
        <li><a href="{{ route('home') }}">Галерея</a></li>
        <li><a href="{{ route('contacts') }}">Контакты</a></li>
      </ul>
    </nav>
    <div class="mobile__firstScreen--elements">
      <div class="header__location">
        <a href="#">
          @include('assets.icons.location')
          <span>
            @if(getCurrentLang() === 'ru')
              {{ getContact()->address_ru }}
            @elseif(getCurrentLang() === 'en')
              {{ getContact()->address_en }}
            @else
              {{ getContact()->address_kk }}
            @endif
          </span>
        </a>
      </div>
      <div class="header__phone">
        <a href="tel:{{ getContact()->phone }}">
          @include('assets.icons.phone')
          <span>{{ getContact()->phone }}</span>
        </a>
      </div>
    </div>
  </div>
</div>

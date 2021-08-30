<div class="map-footer__section section delivery-footer">
  <div class="container-md semi__custom--container">
    @include('assets.map.yandex')
    <footer class="footer">
      <div class="footer__inner d-flex justify-content-between">
        <ul class="footer__nav d-flex">
          <ul>
            <li><a href="{{ route('about') }}">О нас</a></li>
            <li><a href="{{ route('continents') }}">Бесконечность вкуса</a></li>
            <li><a href="{{ route('studios') }}">Кулинарная Студия</a></li>
            <li><a href="{{ route('bars') }}">Галерея Баров</a></li>
            <li><a href="{{ route('vips') }}">VIP Кабины</a></li>
          </ul>
          <ul>
            <li><a href="{{ route('children') }}">Дети</a></li>
            <li><a href="{{ route('deliveries') }}">Доставка еды</a></li>
            <li><a href="{{ route('teams') }}">Команда</a></li>
            <li><a href="{{ route('home') }}">Галерея</a></li>
            <li><a href="{{ route('contacts') }}">Контакты</a></li>
          </ul>
        </ul>
        <a class="footer__logo" href="{{ route('home') }}">
          <img src="{{ asset('icons/logo.svg') }}" alt="" />
        </a>
        <div class="footer__contacts">
          <ul>
            <li>
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
                </span></a
              >
            </li>
            <li>
              <a href="tel:{{ getContact()->phone }}">
                @include('assets.icons.phone')
                <span>{{ getContact()->phone }}</span>
              </a>
            </li>
            <li>
              <a href="mailto:{{ getContact()->email }}">
                @include('assets.icons.mail')
                <span>{{ getContact()->email }}</span></a>
            </li>
          </ul>
        </div>
      </div>
      <div class="footer__rights">
        {{ getTranslate('app') }} <?php echo date('Y'); ?> © {{ getTranslate('rights') }}
      </div>
    </footer>
  </div>
</div>

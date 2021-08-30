<nav id="sidebar" class="sidebar">
  <div class="sidebar-header">
    <a class="sidebar-link" href="{{ route('admin.home') }}">
      <span class="sidebar-link__logo">
        <img class="sidebar-link__icon" src="{{ asset('icons/logo.png') }}" alt="logo">
      </span>
      <span class="sidebar-link__title">{{ getTranslate('admin') }}</span>
    </a>
  </div>

  <ul class="sidebar-list">
    <li @sbactive('admin.home*')>
      <a class="sidebar-list__link" href="{{ route('admin.home') }}">
        @include('assets.icons.home')
        <span class="sidebar-tip">
          {{ getTranslate('home') }}
        </span>
      </a>
    </li>
    <li @sbactive('categ*')>
      <div class="sidebar-submenu">
        <a class="sidebar-list__link" href="{{ route('categories.index') }}">
          @include('assets.icons.template')
          <span class="sidebar-tip">
            {{ getTranslate('sections') }}
          </span>
        </a>
        @if(getCategoriesCount() != 0)
        <a
          class="sidebar-submenu__toggler"
          id="submenu-toggler"
          href="#submenu"
          data-toggle="collapse"
          aria-expanded="false">
          @include('assets.icons.arrow')
        </a>
        @endif
      </div>
    </li>
    <ul class="sidebar-submenu__list" id="submenu-list">
      @foreach(getCategories() as $category)
      <li @sbactive($category->slug . '*')>
        <a class="sidebar-submenu__link"
          @if($category->slug == 'bars')
          href="{{ route($category->slug . '.galleries.index') }}"
          @elseif($category->slug == 'continents')
          href="{{ route($category->slug . '.dishes.index') }}"
          @elseif($category->slug == 'vips')
          href="{{ route($category->slug . '.photos.index') }}"
          @else
          href="{{ route($category->slug . '.index') }}"
          @endif>
          @include('assets.icons.mark')
          <span class="sidebar-tip">
            @if(getCurrentLang() === 'ru')
            {{ $category->name_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $category->name_en }}
            @else
            {{ $category->name_kk }}
            @endif
          </span>
        </a>
      </li>
      @endforeach
    </ul>
    <li @sbactive('hall*')>
      <a class="sidebar-list__link" href="{{ route('halls.index') }}">
        @include('assets.icons.hall')
        <span class="sidebar-tip">
          {{ getTranslate('halls') }}
        </span>
      </a>
    </li>
    <li @sbactive('order*')>
      <a class="sidebar-list__link" href="{{ route('orders.index') }}">
        @include('assets.icons.list')
        <span class="sidebar-tip">
          {{ getTranslate('orders') }}
        </span>
      </a>
    </li>
    <li @sbactive('news*')>
      <a class="sidebar-list__link" href="{{ route('news.index') }}">
        @include('assets.icons.news')
        <span class="sidebar-tip">
          {{ getTranslate('news') }}
        </span>
      </a>
    </li>
    <li @sbactive('translate*')>
      <a class="sidebar-list__link" href="{{ route('translates.index') }}">
        @include('assets.icons.lang')
        <span class="sidebar-tip">
          {{ getTranslate('translates') }}
        </span>
      </a>
    </li>
    <li @sbactive('user*')>
      <a class="sidebar-list__link" href="{{ route('users.index') }}">
        @include('assets.icons.user')
        <span class="sidebar-tip">
          {{ getTranslate('profile') }}
        </span>
      </a>
    </li>
  </ul>
</nav>

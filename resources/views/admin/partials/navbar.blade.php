<nav class="navbar navbar-expand-sm navbar-light bg-light">
  <div class="container-fluid px-1">
    <button id="sidebarToggler" class="navbar-btn">
      @include('assets.icons.toggle')
    </button>

    <button id="navbarToggler" class="navbar-toggler" data-toggle="collapse" data-target="#navbarSupportedContent">
      <span></span>
      <span></span>
      <span></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav d-flex justify-content-end w-100">

        <li class="nav-item">
          <a class="nav-link" href="{{ route('home') }}">
            {{ getTranslate('see') }}
          </a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle pr-3" href="#" data-toggle="dropdown">
            {{ Auth::user()->name }}
          </a>

          <div class="dropdown-menu">
            <a id="logout-link" class="dropdown-item" href="{{ route('logout') }}">
              {{ getTranslate('exit') }}
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST">
              @csrf
            </form>
          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>

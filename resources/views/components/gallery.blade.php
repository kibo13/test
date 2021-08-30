<div class="main__gallery__section section">
  <div class="container-md">
    <div class="main__gallery--inner">
      <div class="main__section--title">{{ getTranslate('galleries') }}</div>
      <div class="gallery__items">
        <div class="row g-3">
          @foreach (getGalleries() as $i => $gallery)
          <div
            data-tab="{{ $gallery->bar->name_en }}"
            class="col-12 col-sm-4 gallery__item @if($i % 5 == 0) showed @endif">
            <div class="gallery__item--image">
              <img src="{{ asset('images/' . $gallery->image) }}" alt="" />
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </div>
  </div>
</div>

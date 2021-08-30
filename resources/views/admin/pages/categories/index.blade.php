@extends('admin.layouts.master')

@section('title', getTranslate('sections'))

@section('content')
<section id="category-index" class="bk-page section">
  <h2 class="mb-3">{{ getTranslate('sections') }}</h2>

  <div class="bk-categories-table">
    <table
      id="category-table"
      class="bk-table table table-bordered table-responsive">
      <thead class="thead-light">
        <tr>
          <th scope="col">#</th>
          <th scope="col" class="w-50">{{ getTranslate('section') }}</th>
          <th scope="col" class="w-50">{{ getTranslate('bg') }}</th>
          <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th>
        </tr>
      </thead>
      <tbody>
        @foreach($categories as $key => $category)
        <tr>
          <td scope="row">{{ $key+=1 }}</td>
          <td>
            <a href="{{ $category->slug }}" class="" title="{{ getTranslate('go_to') }}">
              @if(getCurrentLang() === 'ru')
              {{ $category->name_ru }}
              @elseif(getCurrentLang() === 'en')
              {{ $category->name_en }}
              @else
              {{ $category->name_kk }}
              @endif
            </a>
          </td>
          <td>
            @if(is_null($category->image))
            <span class="text-danger">Изображение отсутствует</span>
            @else
            {{ $category->note }}
            @endif
          </td>
          <td>
            <div class="bk-btn-actions">
              <a
                class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
                href="{{ route('categories.edit', $category) }}"
                data-tip="{{ getTranslate('t_edit') }}" ></a>
              <a
                class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
                href="javascript:void(0)"
                data-id="{{ $category->id }}"
                data-table-name="category"
                data-toggle="modal"
                data-target="#bk-delete-modal"
                data-tip="{{ getTranslate('t_delete') }}" ></a>
            </div>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</section>
@endsection

@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="dish-index" class="bk-page section">
  <h2 class="mb-3">{{ getTranslate('cat_menu') }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('continents.assortments.create') }}" >
      {{ getTranslate('create') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('continents.index') }}" >
      {{ getTranslate('kitchens') }}
    </a>
  </div>

  <table
    id="assortment-table"
    class="bk-table table table-bordered table-responsive">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col" class="w-100">{{ getTranslate('t_name') }}</th>
        <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($assortments as $key => $assortment)
      <tr>
        <td scope="row">{{ $key+=1 }}</td>
        <td>
          @if(getCurrentLang() === 'ru')
          {{ $assortment->name_ru }}
          @elseif(getCurrentLang() === 'en')
          {{ $assortment->name_en }}
          @else
          {{ $assortment->name_kk }}
          @endif
        </td>
        <td>
          <div class="bk-btn-actions">
            <a
              class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
              href="{{ route('continents.assortments.edit', $assortment) }}"
              data-tip="{{ getTranslate('t_edit') }}" ></a>
            <a
              class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
              href="javascript:void(0)"
              data-id="{{ $assortment->id }}"
              data-table-name="assortment"
              data-toggle="modal"
              data-target="#bk-delete-modal"
              data-tip="{{ getTranslate('t_delete') }}" ></a>
          </div>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>

</section>
@endsection

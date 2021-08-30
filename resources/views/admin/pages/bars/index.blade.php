@extends('admin.layouts.master')

@section('title', $title)

@section('content')
<section id="bar-index" class="bk-page section info-form">
  <h2 class="mb-3">{{ getTranslate('bars') }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('bars.create') }}" >
      {{ getTranslate('create') }}
    </a>
    <a class="btn btn-outline-secondary" href="{{ route('bars.galleries.index') }}">
      {{ getTranslate('galleries') }}
    </a>
  </div>

  <table
    id="bar-table"
    class="bk-table table table-bordered table-responsive">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col" class="w-25">{{ getTranslate('t_name') }}</th>
        <th scope="col" class="w-75 no-sort">{{ getTranslate('t_desc') }}</th>
        <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($bars as $key => $bar)
      <tr>
        <td scope="row">{{ $key+=1 }}</td>
        <td>
          @if(getCurrentLang() === 'ru')
          {{ $bar->name_ru }}
          @elseif(getCurrentLang() === 'en')
          {{ $bar->name_en }}
          @else
          {{ $bar->name_kk }}
          @endif
        </td>
        <td>
          <div class="bk-btn-info">
            @if(getCurrentLang() === 'ru')
            {{ $bar->desc_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $bar->desc_en }}
            @else
            {{ $bar->desc_kk }}
            @endif
            <button
              class="bk-btn-info__triangle bk-btn-info__triangle--down"
              title="{{ getTranslate('more') }}">
            </button>
          </div>
        </td>
        <td>
          <div class="bk-btn-actions">
            <a
              class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
              href="{{ route('bars.edit', $bar) }}"
              data-tip="{{ getTranslate('t_edit') }}" ></a>
            <a
              class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
              href="javascript:void(0)"
              data-id="{{ $bar->id }}"
              data-table-name="bar"
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

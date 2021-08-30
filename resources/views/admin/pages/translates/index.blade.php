@extends('admin.layouts.master')

@section('title', getTranslate('translates'))

@section('content')
<section id="translate-index" class="bk-page section">
  <h2 class="mb-3">{{ getTranslate('translates') }}</h2>

  {{-- <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('translates.create') }}" >
      {{ getTranslate('create') }}
    </a>
  </div> --}}

  <table
    id="translate-table"
    class="bk-table table table-bordered table-responsive">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col" class="w-100">{{ getTranslate('note') }}</th>
        <th scope="col" class="text-center" style="min-width: 200px;">EN</th>
        <th scope="col" class="text-center" style="min-width: 200px;">RU</th>
        <th scope="col" class="text-center" style="min-width: 200px;">KK</th>
        <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($translates as $key => $translate)
      <tr>
        <td scope="row">{{ $key+=1 }}</td>
        <td>{{ $translate->note }}</td>
        <td class="text-center">{{ $translate->name_en }}</td>
        <td class="text-center">{{ $translate->name_ru }}</td>
        <td class="text-center">{{ $translate->name_kk }}</td>
        <td>
          <div class="bk-btn-actions">
            <a
              class="bk-btn-actions__link bk-btn-actions__link--edit btn btn-warning"
              href="{{ route('translates.edit', $translate) }}"
              data-tip="{{ getTranslate('t_edit') }}" ></a>
          </div>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
</section>
@endsection

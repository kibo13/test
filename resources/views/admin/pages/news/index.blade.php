@extends('admin.layouts.master')

@section('title', getTranslate('news'))

@section('content')
<section id="news-index" class="bk-page section info-form">
  <h2 class="mb-3">{{ getTranslate('news') }}</h2>

  <div class="bk-btn-group">
    <a class="btn btn-outline-primary" href="{{ route('news.create') }}" >
      {{ getTranslate('create') }}
    </a>
  </div>

  <table
    id="news-table"
    class="bk-table table table-bordered table-responsive">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col" class="w-25">{{ getTranslate('date_publish') }}</th>
        <th scope="col" class="w-25">{{ getTranslate('top') }}</th>
        <th scope="col" class="w-50 no-sort">{{ getTranslate('t_desc') }}</th>
        <th scope="col" class="no-sort">{{ getTranslate('t_action') }}</th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($news as $key => $news)
      <tr>
        <td scope="row">{{ $key+=1 }}</td>
        <td scope="row">{{ getDMY($news->date_public) }}</td>
        <td>
          @if(getCurrentLang() === 'ru')
          {{ $news->name_ru }}
          @elseif(getCurrentLang() === 'en')
          {{ $news->name_en }}
          @else
          {{ $news->name_kk }}
          @endif
        </td>
        <td>
          <div class="bk-btn-info">
            @if(getCurrentLang() === 'ru')
            {{ $news->desc_ru }}
            @elseif(getCurrentLang() === 'en')
            {{ $news->desc_en }}
            @else
            {{ $news->desc_kk }}
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
              href="{{ route('news.edit', $news) }}"
              data-tip="{{ getTranslate('t_edit') }}" ></a>
            <a
              class="bk-btn-actions__link bk-btn-actions__link--delete btn btn-danger"
              href="javascript:void(0)"
              data-id="{{ $news->id }}"
              data-table-name="news"
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

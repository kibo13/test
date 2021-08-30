<?php

use App\Models\Translate;

function getTranslate($param)
{
  // flag
  $isRecord = Translate::count();

  // output
  $output = '';

  // table isn't empty
  if ($isRecord) {
    // record
    $record = Translate::where('code', $param)->first();

    switch (getCurrentLang()) {
      case 'ru':
        $output = $record->name_ru;
        break;
      case 'en':
        $output = $record->name_en;
        break;
      case 'kk':
        $output = $record->name_kk;
        break;
    }

    return $output;
  }
  // table is empty
  else {
    echo '<div class="bk-loader"></div>';
    return;
  }
}
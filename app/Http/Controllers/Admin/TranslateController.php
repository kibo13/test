<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Translate;
use Illuminate\Http\Request;

class TranslateController extends Controller
{
  public function index()
  {
    // translates
    $translates = Translate::get();

    return view('admin.pages.translates.index', compact('translates'));
  }

  public function create()
  {
    // return view('admin.pages.translates.form');
    return redirect()->route('translates.index');
  }

  public function store(Request $request)
  {
    Translate::create($request->all());
    return redirect()->route('translates.index');
  }

  public function edit(Translate $translate)
  {
    return view('admin.pages.translates.form', compact('translate'));
  }

  public function update(Request $request, Translate $translate)
  {
    $translate->update($request->all());
    return redirect()->route('translates.index');
  }

  public function destroy(Translate $translate)
  {
    $translate->delete();
    return redirect()->route('translates.index');
  }
}

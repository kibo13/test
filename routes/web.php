<?php

use Illuminate\Support\Facades\Route;

// home
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DataController;

// cart
use App\Http\Controllers\CartController;

// sections
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\ContinentController;
use App\Http\Controllers\Admin\StudioController;
use App\Http\Controllers\Admin\BarController;
use App\Http\Controllers\Admin\VipController;
use App\Http\Controllers\Admin\ChildController;
use App\Http\Controllers\Admin\DeliveryController;
use App\Http\Controllers\Admin\TeamController;
use App\Http\Controllers\Admin\ContactController;

// subsections
use App\Http\Controllers\Admin\AssortmentController;
use App\Http\Controllers\Admin\DishController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\Admin\PhotoController;
use App\Http\Controllers\Admin\FeatureController;

// halls
use App\Http\Controllers\Admin\TypeHallController;
use App\Http\Controllers\Admin\HallController;

// orders
use App\Http\Controllers\Admin\OrderController;

// news
use App\Http\Controllers\Admin\NewsController;

// translates
use App\Http\Controllers\Admin\TranslateController;

// profile
use App\Http\Controllers\Admin\UserController;

Route::group(
  [
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' =>
    [
      'localeSessionRedirect',
      'localizationRedirect',
      'localeViewPath'
    ]
  ],
  function () {
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/about', [AboutController::class, 'main'])->name('about');
    Route::get('/continents', [ContinentController::class, 'main'])->name('continents');
    Route::get('/studios', [StudioController::class, 'main'])->name('studios');
    Route::get('/bars', [BarController::class, 'main'])->name('bars');
    Route::get('/vips', [VipController::class, 'main'])->name('vips');
    Route::get('/children', [ChildController::class, 'main'])->name('children');
    Route::get('/deliveries', [DeliveryController::class, 'main'])->name('deliveries');
    Route::get('/deliveries/{id}', [DeliveryController::class, 'menu'])->name('deliveries.menu');
    Route::get('/teams', [TeamController::class, 'main'])->name('teams');
    Route::get('/contacts', [ContactController::class, 'main'])->name('contacts');
    Route::get('/data/assortments', [DataController::class, 'assortments']);

    // cart
    Route::get('carts', [CartController::class, 'main'])->name('carts');
    Route::get('carts/create/{id}', [CartController::class, 'create'])->name('carts.create');
    Route::get('carts/add/{dish}', [CartController::class, 'add'])->name('carts.add');
    Route::get('carts/del/{dish}', [CartController::class, 'del'])->name('carts.del');
    Route::get('carts/destroy/{dish}', [CartController::class, 'destroy'])->name('carts.destroy');
    Route::post('carts/step_1/{order}', [CartController::class, 'step_1'])->name('carts.step_1');
    Route::post('carts/step_2/{order}', [CartController::class, 'step_2'])->name('carts.step_2');
    Route::get('carts/step_3/{order}', [CartController::class, 'step_3'])->name('carts.step_3');

    Auth::routes([
      'reset' => false,
      'confirm' => false,
      'verify' => false,
      'register' => false
    ]);

    Route::group([
      'middleware' => 'auth',
      'prefix' => 'admin'
    ], function () {
      // home
      Route::get('/', [HomeController::class, 'admin'])->name('admin.home');
      Route::put('/home/{home}', [HomeController::class, 'update'])->name('admin.update');

      // sections
      Route::resource('/categories', CategoryController::class)->except(['create', 'store', 'show']);
      Route::resource('/about', AboutController::class);
      Route::resource('/continents', ContinentController::class);
      Route::resource('/studios', StudioController::class);
      Route::resource('/bars', BarController::class);
      Route::resource('/vips', VipController::class);
      Route::resource('/children', ChildController::class);
      Route::resource('/deliveries', DeliveryController::class);
      Route::resource('/teams', TeamController::class);
      Route::resource('/contacts', ContactController::class);

      // subsections
      Route::resource('/assortments', AssortmentController::class, ['as' => 'continents']);
      Route::resource('/dishes', DishController::class, ['as' => 'continents']);
      Route::resource('/galleries', GalleryController::class, ['as' => 'bars']);
      Route::resource('/photos', PhotoController::class, ['as' => 'vips']);
      Route::resource('/features', FeatureController::class, ['as' => 'children']);

      // halls
      Route::resource('/hall-types', TypeHallController::class);
      Route::resource('/halls', HallController::class);

      // orders
      Route::resource('/orders', OrderController::class);

      // news
      Route::resource('/news', NewsController::class);

      // translates
      Route::resource('/translates', TranslateController::class);

      // profile
      Route::get('/profile', [UserController::class, 'index'])->name('users.index');
      Route::put('/profile/{user}', [UserController::class, 'update'])->name('users.update');
    });
  }
);

Route::get('/{locale}', [HomeController::class, 'changeLocale'])->name('locale');

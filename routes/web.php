<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/testApi', function (Request $request) {
    $http = new GuzzleHttp\Client;

    $response = $http->request('GET', 'http://nsit-bd.com/ess/api/JobRequests', [
        'headers' => [
            'Accept' => 'application/json',
            'Authorization' => 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjU5ZTljNzQ4NDk5YWY4ZDE3MmMyYTVkM2NiNTAyODlkOTJhMTAxNWUwZGY0ZDZmOGM0MDc0YjIxMGExMTE2ZmJhMDQ5N2FkYWU2NTJjY2VhIn0.eyJhdWQiOiIyIiwianRpIjoiNTllOWM3NDg0OTlhZjhkMTcyYzJhNWQzY2I1MDI4OWQ5MmExMDE1ZTBkZjRkNmY4YzQwNzRiMjEwYTExMTZmYmEwNDk3YWRhZTY1MmNjZWEiLCJpYXQiOjE1MjUyNTE0NjIsIm5iZiI6MTUyNTI1MTQ2MiwiZXhwIjoxNTU2Nzg3NDYyLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.hrC4jIRsICfWVypqpH_33917gZeddFwWBgvtG7qH77vPLfF7Fs09mbY6-vcbdoWpmRAaft676OuzmIA7d-TxqWNyCdZjtLljlSuDfacnP76abEzzMVYxbmiMkQftOYFpvsceYAOTjMBdLuw3vsmU0Owkg1AkuAZr2hApiStgMKrlcGAHAmtBMDapTrVIXXxmQVhdYVCnr1EY8X9nqpWxKkb70VHewj4D_s5j6ghBZdQDAFzykwplivnv3TXebHBb7KTr57sSOseMMTavPRuokLccp8Xh4azrTRaNSqDil7t0dPQDAEWFrXUDMA_QCqNQQ_ZYL6dHEvZI8H1qj4O7nZqRdo5NGvTv98BwZqHWgQIDRyZh01w43PhMCYN-2q4s-qn0WWTPdnlIxVQGOS-JTHjPtC2vn46vLENuQ9hgtdxIFT0t6qzWy7LyVJXF7M4uavZrQhG3tTjcpYB-aOiAhgEn7fcG0UO3narqxdH_shsuI0lTgohOS94mYvH8DM7g8YLBltOsxUAjbuiJSdBFqSluPwDseBBZ3LwjHF0zUaoL5Ca9985IZ-37PuYWXLiK1ei0qh0ejsjC4rpmiqF_eF5qs6ooXeQGLXsQ6BSI9pexuotSWnzgNUwwTK3O0kaPCWcTTs7R1vz0WfBojgxWH8C5XI7XB60NqseNM9zrdpY',
        ],
    ]);
    return json_decode((string) $response->getBody(), true);
});

Route::get('/redirect', function () {
    $http = new GuzzleHttp\Client;
    $query = http_build_query([
        'x' => 'fcssdsf',
        'headers' => [
            'Accept' => 'application/json',
            'Authorization' => 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3NmNjNTQ2ZTVhZjRkOTExYTY2MmQwNzljNzlmOTcxOTYzNTdhY2VjNGE4ZDJiNGMxZDI0YTc2YWMyNjA5ZTBhNjVmMjJhZjhhZmNkZjNiIn0.eyJhdWQiOiIyIiwianRpIjoiZTc2Y2M1NDZlNWFmNGQ5MTFhNjYyZDA3OWM3OWY5NzE5NjM1N2FjZWM0YThkMmI0YzFkMjRhNzZhYzI2MDllMGE2NWYyMmFmOGFmY2RmM2IiLCJpYXQiOjE1MjUxOTM2NzEsIm5iZiI6MTUyNTE5MzY3MSwiZXhwIjoxNTU2NzI5NjcxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.mlSPIJRKTGPJgIhsM4A8uweKlrEWV1an6zQHXTzM1vSsOcX1era29lSNybBvAQvetEL0K4TbCFyt2gt5WySdUWm9QU00l54OOgB1sdpH7mBiWFVwDAbWE0ES5WzFoIXm6f0MEGXQ4UUB7Sur0eGk8J9pakO6XJANgWs_PIOa9adwQx_-_AQz1C_tWhejU2ZFw8SR6jWldD6-wVX7mbRuKCTwyv_d5DF5QWJfcBI7ntT5ByGaMr7dc9FUgFoE_5koxz5p0yM-Qnk067C6H_wKhnZcID_kiFhSk9h09pxl0npkuPT0oH6EizQS5L8dFCmbxH8cFJp-AltmBUZTA75QiyI4vCz_tCDSgDkCHvl_d6qZ77cJymqJi2JGUvWjffXmoHEHgeVaTsByhzrJJYPtMQlggqkc2GEwtehRheE-VJ7Srug-c350aXPcTUgkqBf64aMdHpgqHiH506DBwLW0cM6mxRfKGHq4RV3_P3ofuPSQiAzNV6FiF1zj0P_esf813qCcHTSzA0Kirxlx6CwmM6FeFZyPWNlgF_h4knkCBAKkHAOxTnK26_Iutl8GZQqob09E5ZUwzxMU46alyQrUZJU5fjco6gVC4PLFdmwi09nB0r5GP_G06SC6NR2pDjLe6lQ_cLrjHGYpuIDkXPw6TU3lAk4xLPpcq-_4yE5CJHs',
        ]
    ]);

    $response=$http->post('http://localhost:8000/api/JobRequests?' . $query);
    return json_decode((string) $response->getBody(), true);
});
Route::get('/firebase','FirebaseController@index');
Route::get('/testFirebase','FirebaseController@show');

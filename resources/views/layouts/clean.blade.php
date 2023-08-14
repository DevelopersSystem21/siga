<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap material admin template">
    <meta name="author" content="Jorge Carbajulca">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title','SIGA')</title>


    <!-- Stylesheets -->
    <style>
        <?php include(public_path() . '/css/reportes.css');?>
    </style>
    @yield('css')
    <style></style>
</head>
<body style="">
<div id="app" class="container" style="height: 100%">
    @yield('content')
</div>
@yield('js')
</body>
</html>

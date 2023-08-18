<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap">
    <link rel="stylesheet" href=" {{asset('css/fonts.css')}}">

    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

    <link rel="stylesheet" href="{{ URL::asset('css/template.css') }}"/>
    <link rel="icon" href="{{ url('images/logo/praetoria-1-transparent.png') }}">


    <!-- Styles -->
    @livewireStyles
</head>

<body class="font-serif antialiased bg-violet-900 text-yellow-500 ">

<div class="min-h-screen ">
    @livewire('header.site-header')
    @livewire('modal.login-modal')
    @livewire('modal.register-modal')

    <!-- Page Heading -->
    @if (isset($header))
        <header>
            @if (request()->routeIs('welcome'))
                @livewire('header.site-header-images')
            @endif
            @livewire('header.site-header-navigator')
        </header>
    @endif

    <!-- Page Content -->
        <main class="flex">
            <div style="width:20%">@livewire('body.carousel.site-body-carousel')</div>
            {{ $slot }}
            <div style="width:20%">@livewire('body.carousel.site-body-carousel')</div>
        </main>
</div>

@stack('modals')

@livewireScripts
</body>

</html>

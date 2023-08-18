<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
</script>

<div id="praetorianCarousel" class="carousel slide bg-violet-900 max-w-7xl sm:px-6 lg:px-8" data-ride="carousel">
    <div class="carousel-inner" style="height:360px;">
        @foreach (File::glob(public_path('images/carousel') . '/*') as $image)
            @if ($loop->index === 0)
                <div class="carousel-item active" style="top:-360px;">
                    <img src="{{ str_replace(public_path(), '', $image) }}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-caption">
                    <h1 class=" text-yellow-500">Legio Praetoria</h1>
                </div>
            @else
                <div class="carousel-item" style="top:-360px;">
                    <img src="{{ str_replace(public_path(), '', $image) }}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-caption">
                    <h1 class=" text-yellow-500">Legio Praetoria</h1>
                </div>
            @endIf
        @endforeach
    </div>
</div>

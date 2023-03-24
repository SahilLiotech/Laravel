<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
  <div class="container border p-3 mb-2 bg-dark text-white" style="margin-top: 30px; margin-bottom:30px; width:40%">
    <div>
      <h2 style="text-align: center;">Registration Form</h2>
    </div>
    @if (Session::has('success'))
    <div class="alert alert-success" role="alert">
      {{session::get('success')}}
    </div>
    @endif
    <form action="{{url('/')}}" method="post">
      @csrf
      <x-input type="text" name="fname" label="First Name" />
      <div>
        <span class="text-danger">
          @error('fname')
          {{$message}}
          @enderror
        </span>
      </div>
      <x-input type="text" name="lname" label="Last Name" />
      <div>
        <span class="text-danger">
          @error('lname')
          {{$message}}
          @enderror
        </span>
      </div>
      <x-input type="email" name="email" label="Email Address" />
      <div>
        <span class="text-danger">
          @error('email')
          {{$message}}
          @enderror
        </span>
      </div>
      <x-input type="password" name="password" label="Password" />
      <div>
        <span class="text-danger">
          @error('password')
          {{$message}}
          @enderror
        </span>
      </div>
      <x-input type="text" name="address" label="Address" />
      <div>
        <span class="text-danger">
          @error('address')
          {{$message}}
          @enderror
        </span>
      </div>
      <x-input type="text" name="city" label="City" />
      <div>
        <span class="text-danger">
          @error('city')
          {{$message}}
          @enderror
        </span>
      </div>

      @php
      $states = ['Andhrapradesh', 'Gujarat', 'Goa', 'Maharastra', 'Karnataka'];
      @endphp
      <x-select label="State" name="state" :options="$states" />


      <x-input type="text" name="zip" label="Zip" />
      <div>
        <span class="text-danger">
          @error('zip')
          {{$message}}
          @enderror
        </span>
      </div>

      <center>
        <button type="submit" class="btn btn-primary" id="btn" style="background-color: #7608c9;">Sign Up</button>
        <a class="btn btn-primary" href="{{url('/')}}/view" role="button" style="background-color: #7608c9;">view</a>
      </center>
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>

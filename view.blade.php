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

  <!-- <div class="container border border-dark mt-5 mb-3" style="width:100%"> -->
  <div class="table-responsive">
    <table class="table table-primary">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">First Name</th>
          <th scope="col">Last Name</th>
          <th scope="col">Email</th>
          <th scope="col">Password</th>
          <th scope="col">Address</th>
          <th scope="col">City</th>
          <th scope="col">State</th>
          <th scope="col">ZIp</th>
          <th scope="col">Action</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($info as $data)

        <tr class="">
          <td>{{$data->uid}}</td>
          <td>{{$data->fname}}</td>
          <td>{{$data->lname}}</td>
          <td>{{$data->email}}</td>
          <td>{{$data->password}}</td>
          <td>{{$data->address}}</td>
          <td>{{$data->city}}</td>
          <td>{{$data->state}}</td>
          <td>{{$data->zip}}</td>
          <td><a href="#"><button class="btn btn-warning">Edit</button></a></td>
          <!-- <td><a href="/view-delete/{{$data->uid}}"><button class="btn btn-danger">Delete</button></a>
          </td> -->
          <td>
            <form action="{{ route('user.destroy', $data->uid)}}" method="post">
              @csrf
              @method('DELETE')
              <button class="btn btn-danger" type="submit">Delete</button>
            </form>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
  <!-- </div> -->




  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>
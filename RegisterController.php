<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\userinfo;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{

    public function index()
    {
        return view('form');
    }


    public function data(Request $request)
    {
        $request->validate(
            [
                'fname' => 'required',
                'lname' => 'required',
                'email' => 'required|email',
                'password' => 'required',
                'address' => 'required',
                'city' => 'required',
                'zip' => 'required'
            ]
        );

        // echo "<pre>";
        // print_r($request->all());
        // echo "</pre>";

        $info = new userinfo;
        $info->fname = $request['fname'];
        $info->lname = $request['lname'];
        $info->email = $request['email'];
        $info->password = Hash::make($request['password']);
        $info->address = $request['address'];
        $info->city = $request['city'];
        $info->state = $request['state'];
        $info->zip = $request['zip'];
        $info->save();

        return redirect('/');
    }


    public function view()
    {
        $info = userinfo::all();
        $data = compact('info');

        return view('view')->with($data);
    }

    public function delete($id)
    {
        $info = userinfo::find($id);
        $info->delete();
    }


    // public function delete($id)
    // {
    //     $user = userinfo::whereId($id)->first();

    //     $user->delete();

    //     return redirect()->back();
    // }

}

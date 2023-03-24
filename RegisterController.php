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

        return redirect('/')->with('success', 'Record Inserted Successfully');
    }


    public function view()
    {
        $info = userinfo::all();
        $data = compact('info');

        return view('view')->with($data);
    }


    public function delete($id)
    {
        $user = userinfo::find($id);

        if (!is_null($user)) {
            $user->delete();
        }
        return redirect('view')->with('success', 'Record Deleted Successfully');
    }

    public function edit($id)
    {
        $user = userinfo::find($id);
        return view('edit', compact('user'));
        // return $user;
    }

    public function update(Request $request)
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
        $id = $request->uid;

        $user = userinfo::find($id);

        $user->update([
            'fname' => $request->fname,
            'lname' => $request->lname,
            'email' => $request->email,
            'password' =>  Hash::make($request->password),
            'address' => $request->address,
            'city' => $request->city,
            'state' => $request->state,
            'zip' => $request->zip
        ]);

        return redirect()->back()->with('success', 'Record Updated Succesfully');
    }
}

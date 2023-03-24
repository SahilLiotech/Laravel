<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class userinfo extends Model
{
    use HasFactory;
    protected $table = '_userinfo';
    protected $primaryKey = 'uid';
    protected $fillable = ['fname', 'lname', 'email', 'password', 'address', 'city', 'state', 'zip'];
}

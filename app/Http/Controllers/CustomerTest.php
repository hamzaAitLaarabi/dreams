<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\customer;

class CustomerTest extends Controller
{
    public function test()
    {
        $customer = customer::orderBy('id','desc')->get();
        return $customer;
    }
    public function testdb()
    {
        $posts = DB::table('customer')->orderBy('Customer_ID','desc')->get();
        return $posts;
    }
}

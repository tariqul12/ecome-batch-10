<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use Illuminate\Http\Request;
use Session;

class CustomerAuthController extends Controller
{
    private $customer;

    public function login()
    {
        return view('front-end.customer.login');
    }

    public function loginCheck(Request $request)
    {
        $this->customer = Customer::where('email', $request->user_name)->orWhere('mobile', $request->user_name)->first();
        if ($this->customer)
        {
            if (password_verify($request->password, $this->customer->password))
            {
                Session::put('customer_id', $this->customer->id);
                Session::put('customer_name', $this->customer->name);

                return redirect('/customer-dashboard');
            }
            else
            {
                return back()->with('message', 'Sorry .. password is invalid.');
            }
        }
        else
        {
            return back()->with('message', 'Sorry .. email or mobile is invalid.');
        }
    }

    public function register()
    {
        return view('front-end.customer.register');
    }

    public function newCustomer(Request $request)
    {
        if ($request->password == $request->confirm_password)
        {
           $this->customer = Customer::newCustomer($request);
            Session::put('customer_id', $this->customer->id);
            Session::put('customer_name', $this->customer->name);
            return redirect('/customer-dashboard');
        }
        else
        {
            return back()->with('message', 'Sorry password & confirm password are not same.');
        }
    }

    public function logout()
    {
        Session::forget('customer_id');
        Session::forget('customer_name');

        return redirect('/');
    }

    public function dashboard()
    {
        return view('front-end.customer.dashboard',[
            'orders'=>Order::where('customer_id',Session::get('customer_id'))->latest()->get()
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Registration;
use Illuminate\Http\Request;

class RegistrationController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'start_date' => 'required',
            'pickup_address' => 'required|string|max:255',
            'service_id' => 'required',
            'comment' => 'nullable',
        ]);

        Registration::create($request->all());

        return redirect()->back()->with('success', 'Registration successful!');
    }
}

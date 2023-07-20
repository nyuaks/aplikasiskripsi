<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\NotificationEmail;
use App\Models\Responden;
use Carbon\Carbon;

class NotificationController extends Controller
{
    public function index()
    {
        return view('send-notification');
    }

    public function sendNotification(Request $request)
    {
        set_time_limit(120);
        $request->validate([
            'subject' => 'required',
            'message' => 'required',
        ]);

        $respondens = Responden::all();

        foreach ($respondens as $responden) {
            $sendAt = Carbon::now()->addMinutes(1); // Batasan waktu pengiriman, dalam contoh ini adalah 1 menit dari saat ini
            Mail::to($responden->email)->later($sendAt, new NotificationEmail($request->subject, $request->message));
        }

        return redirect('/home');
    }
}

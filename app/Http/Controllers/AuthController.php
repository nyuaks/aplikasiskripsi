<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Notice;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Notifications\TelegramRegister;
use Illuminate\Support\Facades\Notification;
use Illuminate\Notifications\AnonymousNotifiable;

class AuthController extends Controller
{
    public function telegram(Notice $notice)
    {
        $user = new User;
        $notice->notice_id = Str::isUuid($notice->id);
        $notice->notice = 'Skripsi';
        $notice->noticedes = $user->email . "^\n" . $user->name;
        $notice->noticelink = 'https://api.telegram.org/rrismd_bot:' . env('TELEGRAM_BOT_TOKEN') . '/getMe';
        $notice->telegramid = config('services.telegram_id');
        $notice->save();

        $notifiable = new AnonymousNotifiable([
            'telegramid' => $notice->telegramid,
        ]);

        Notification::route('telegram', $notice->telegramid)->notify(new TelegramRegister($notifiable));

        return response()->json([
            'title' => 'Telegram Bot',
            'data' => $notice
        ]);
    }
}

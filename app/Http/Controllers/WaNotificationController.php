<?php

namespace App\Http\Controllers;

use App\Models\Responden;
use Illuminate\Http\Request;

class WaNotificationController extends Controller
{
    public function index(Responden $responden)
    {
        return view('wa-notification',[
            'responden' => Responden::find($responden->id)
        ]);
    }

    public function replaceNumber($phoneNumber)
    {
        // Menghapus karakter "-" dan spasi
        $phoneNumber = str_replace(['-', ' '], '', $phoneNumber);

        // Menghapus karakter "+62" jika ada di awal nomor
        if (strpos($phoneNumber, '+62') === 0) {
            $phoneNumber = substr($phoneNumber, 3);
        }

        // Mengganti "08" di awal nomor dengan "62"
        if (strpos($phoneNumber, '08') === 0) {
            $phoneNumber = '628' . substr($phoneNumber, 2);
        }

        return $phoneNumber;
    }

    
    public function kirimWa($nomorPenerima,$message)
    {
        $my_apikey = "J9WF2GNSMS1PWUI5EP3Y";
        $destination = $nomorPenerima;
        $message = $message; // Lakukan URL encoding pada pesan sebelum dikirimkan
        $api_url = "http://panel.rapiwha.com/send_message.php";
        $api_url .= "?apikey=". urlencode ($my_apikey);
        $api_url .= "&number=". urlencode ($destination);
        $api_url .= "&text=". urlencode ($message);
        $my_result_object = json_decode(file_get_contents($api_url, false));

        $response = $my_result_object->result_code;
        
        return $response;
    }

    public function sendNotification(Request $request)
{
    set_time_limit(120);
    $request->validate([
        //'subject' => 'required',
        'message' => 'required',
    ]);

    $notificationMessage = $request->input('message'); // Ambil isi pesan notifikasi dari form

        $respondens = Responden::all();
        $successCount = 0;
        $failureCount = 0;
        $failedNumbers = [];
    
        foreach ($respondens as $responden) {
            $sendAt = \Carbon\Carbon::now()->addMinutes(1);
    
            // Lakukan pengiriman pesan WhatsApp
            $response = $this->kirimWa($this->replaceNumber($responden->telepon), $notificationMessage); // Kirim pesan ke method kirimWa
    
            // Tambahkan hitungan keberhasilan atau kegagalan
            if ($response==0 || $response== "Code 0" || $response == "Code 0: Message queued") {
                $successCount++;
            } else {
                $failureCount++;
                $failedNumbers[] = $responden->telepon;
            }
    
        }
    
        // Set pesan berhasil/gagal sebagai data flash untuk ditampilkan di halaman tujuan
        $message = "Pesan berhasil dikirim ke $successCount responden.Gagal dikirim ke $failureCount responden.";
    
        return redirect('/wa-notification')->with('message', $message)->with('failureCount', $failureCount)->with('failedNumbers', $failedNumbers);
    }
    
}

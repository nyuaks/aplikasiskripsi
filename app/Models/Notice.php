<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Notice extends Model
{
    use HasFactory, Notifiable;

    protected $table = 'noticees';

    protected $primaryKey = 'notice_id';
    protected $keyType = 'string';
}

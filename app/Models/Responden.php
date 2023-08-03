<?php

namespace App\Models;

use App\Models\Acara;
use App\Models\Lagu;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Responden extends Model
{
    use HasFactory;

    // mess aignment
    protected $table = 'respondens';

    protected $guarded = ['id'];

    protected $fillable = ['acara_id','pendengar','telepon','respon_pendengar','lagu_id'];

    /**
     * Get the acara that owns the Responden
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function acara(): BelongsTo
    {
        return $this->belongsTo(Acara::class);
    }
    public function lagu(): BelongsTo
    {
        return $this->belongsTo(Lagu::class);
    }
}

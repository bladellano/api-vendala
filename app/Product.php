<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name','price','description','category','path_img','cod_product_kit','kit'
    ];
}

<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\Product::class, function (Faker $faker) {
    return [
        'name'=>$faker->name,
        'category'=>$faker->name,
        'price'=>$faker->randomFloat(2,0,8),
        'description'=>$faker->text,
        'path_img'=>$faker->text,
        'cod_product_kit'=> '1|22|88|102|4',
    ];
});

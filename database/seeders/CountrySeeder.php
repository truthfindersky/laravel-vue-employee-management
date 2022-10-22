<?php

namespace Database\Seeders;

use App\Models\Country;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
//use SebastianBergmann\CodeCoverage\Node\File;

use Illuminate\Support\Facades\File;

class CountrySeeder extends Seeder
{

    public function run()
    {
        //Country::truncate();
        $json = File::get("database/data/countries.json");
        $countries = json_decode($json);
        foreach ($countries as $key => $value){
            Country::create(array(
                'name' => $value->name,
                'country_code' => $value->country_code,
                'dial_code' => $value->dial_code,

            ));
        }
    }
}

<?php

namespace App\Repositories;

use App\Interfaces\BrokerRepositoryInterface;
use App\Models\Broker;
use Illuminate\Support\Collection;

class BrokerRepository Implements BrokerRepositoryInterface
{
    /**
     * @return Collection|Broker[]
     */

    public function getAllBrokers()
    {
        return Broker::orderBy('score','DESC')->Where('type','Stock')->get();
    }

    public function getRandomBroker()
    {
        return Broker::inRandomOrder()->first();
    }

    public function top_3_2020()
    {
        return Broker::whereYear('review_date','=','2020')->orderBy('score','DESC')->limit(3)->get();
    }

    public function with_no_fee()
    {
        return Broker::where('has_inactivity_fee',0)->orderBy('score','DESC')->get();;
    }
}

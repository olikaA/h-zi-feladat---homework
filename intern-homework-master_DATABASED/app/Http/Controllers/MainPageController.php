<?php

namespace App\Http\Controllers;

use App\Models\Broker;
use App\Repositories\BrokerRepository;
use Carbon\Carbon;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\View\View;

class MainPageController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    private $brokerRepository;

    public function __construct(BrokerRepository $brokerRepository)
    {
        $this->brokerRepository = $brokerRepository;
    }

    public function index(){

        $all = $this->brokerRepository->getAllBrokers();
        $top_3_2020 = $this->brokerRepository->top_3_2020();
        $with_no_fee = $this->brokerRepository->with_no_fee();

        return view('welcome')->with(compact('top_3_2020','all','with_no_fee'));

    }
}

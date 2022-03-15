<?php

namespace App\Interfaces;

interface BrokerRepositoryInterface
{
    public function getAllBrokers();
    public function top_3_2020();
    public function with_no_fee();
}

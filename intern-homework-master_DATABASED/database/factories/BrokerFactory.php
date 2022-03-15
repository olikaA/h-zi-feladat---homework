<?php

namespace Database\Factories;

use App\Models\Broker;
use Illuminate\Database\Eloquent\Factories\Factory;

class BrokerFactory extends Factory
{
    /**
     * Define the model's default state.
     *

     *
     * @return array
     */

    protected $model = Broker::class;

    public function definition()
    {
           return [
               'name' => $this->faker->firstNameMale(),
               'type' => $this->faker->creditCardType(),
               'score' => $this->faker->randomFloat(2,0),
               'has_inactivity_fee' => $this->faker->numberBetween(1,500),
               'review_date' => now()
           ];
    }
}

@php
    use App\Models\Broker;
    /** @var Broker $broker */
@endphp

<div class="broker">
    <p style="font-weight: bold">{{ $broker->name }}</p>
    <div>Overall score: <span style="font-weight: bold">{{ $broker->score }}</span></div>
    <!-- <div>InActivity Fee: <span style="font-weight: bold">{{ $broker->has_inactivity_fee }}</span></div> -->
    <div>Last reviewed: {{ $broker->review_date }}</div>
</div>

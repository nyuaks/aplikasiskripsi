@component('mail::message')
# Notification

{!! $message !!}

Thanks,<br>
{{ config('app.name') }}
@endcomponent

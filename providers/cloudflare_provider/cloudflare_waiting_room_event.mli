(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_waiting_room_event

val cloudflare_waiting_room_event :
  ?custom_page_html:string ->
  ?description:string ->
  ?disable_session_renewal:bool ->
  ?id:string ->
  ?new_users_per_minute:float ->
  ?prequeue_start_time:string ->
  ?queueing_method:string ->
  ?session_duration:float ->
  ?shuffle_at_event_start:bool ->
  ?suspended:bool ->
  ?total_active_users:float ->
  event_end_time:string ->
  event_start_time:string ->
  name:string ->
  waiting_room_id:string ->
  zone_id:string ->
  string ->
  unit

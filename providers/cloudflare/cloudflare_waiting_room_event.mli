(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_waiting_room_event

val cloudflare_waiting_room_event :
  ?custom_page_html:string prop ->
  ?description:string prop ->
  ?disable_session_renewal:bool prop ->
  ?id:string prop ->
  ?new_users_per_minute:float prop ->
  ?prequeue_start_time:string prop ->
  ?queueing_method:string prop ->
  ?session_duration:float prop ->
  ?shuffle_at_event_start:bool prop ->
  ?suspended:bool prop ->
  ?total_active_users:float prop ->
  event_end_time:string prop ->
  event_start_time:string prop ->
  name:string prop ->
  waiting_room_id:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_waiting_room_event

val yojson_of_cloudflare_waiting_room_event :
  cloudflare_waiting_room_event -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_on : string prop;
  custom_page_html : string prop;
  description : string prop;
  disable_session_renewal : bool prop;
  event_end_time : string prop;
  event_start_time : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  new_users_per_minute : float prop;
  prequeue_start_time : string prop;
  queueing_method : string prop;
  session_duration : float prop;
  shuffle_at_event_start : bool prop;
  suspended : bool prop;
  total_active_users : float prop;
  waiting_room_id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_page_html:string prop ->
  ?description:string prop ->
  ?disable_session_renewal:bool prop ->
  ?id:string prop ->
  ?new_users_per_minute:float prop ->
  ?prequeue_start_time:string prop ->
  ?queueing_method:string prop ->
  ?session_duration:float prop ->
  ?shuffle_at_event_start:bool prop ->
  ?suspended:bool prop ->
  ?total_active_users:float prop ->
  event_end_time:string prop ->
  event_start_time:string prop ->
  name:string prop ->
  waiting_room_id:string prop ->
  zone_id:string prop ->
  string ->
  t

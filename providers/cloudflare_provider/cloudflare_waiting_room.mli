(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_waiting_room__additional_routes
type cloudflare_waiting_room__timeouts
type cloudflare_waiting_room

val cloudflare_waiting_room :
  ?cookie_suffix:string ->
  ?custom_page_html:string ->
  ?default_template_language:string ->
  ?description:string ->
  ?disable_session_renewal:bool ->
  ?json_response_enabled:bool ->
  ?path:string ->
  ?queue_all:bool ->
  ?queueing_method:string ->
  ?queueing_status_code:float ->
  ?session_duration:float ->
  ?suspended:bool ->
  ?timeouts:cloudflare_waiting_room__timeouts ->
  host:string ->
  name:string ->
  new_users_per_minute:float ->
  total_active_users:float ->
  zone_id:string ->
  additional_routes:cloudflare_waiting_room__additional_routes list ->
  string ->
  unit

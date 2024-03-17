(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_waiting_room__additional_routes
type cloudflare_waiting_room__timeouts
type cloudflare_waiting_room

val cloudflare_waiting_room :
  ?cookie_suffix:string prop ->
  ?custom_page_html:string prop ->
  ?default_template_language:string prop ->
  ?description:string prop ->
  ?disable_session_renewal:bool prop ->
  ?id:string prop ->
  ?json_response_enabled:bool prop ->
  ?path:string prop ->
  ?queue_all:bool prop ->
  ?queueing_method:string prop ->
  ?queueing_status_code:float prop ->
  ?session_duration:float prop ->
  ?suspended:bool prop ->
  ?timeouts:cloudflare_waiting_room__timeouts ->
  host:string prop ->
  name:string prop ->
  new_users_per_minute:float prop ->
  total_active_users:float prop ->
  zone_id:string prop ->
  additional_routes:cloudflare_waiting_room__additional_routes list ->
  string ->
  unit

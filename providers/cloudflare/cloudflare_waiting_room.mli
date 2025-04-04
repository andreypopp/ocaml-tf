(** Provides a Cloudflare Waiting Room resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_routes

val additional_routes :
  ?path:string prop -> host:string prop -> unit -> additional_routes

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

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
  ?additional_routes:additional_routes list ->
  ?timeouts:timeouts ->
  host:string prop ->
  name:string prop ->
  new_users_per_minute:float prop ->
  total_active_users:float prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_waiting_room

val yojson_of_cloudflare_waiting_room :
  cloudflare_waiting_room -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cookie_suffix : string prop;
  custom_page_html : string prop;
  default_template_language : string prop;
  description : string prop;
  disable_session_renewal : bool prop;
  host : string prop;
  id : string prop;
  json_response_enabled : bool prop;
  name : string prop;
  new_users_per_minute : float prop;
  path : string prop;
  queue_all : bool prop;
  queueing_method : string prop;
  queueing_status_code : float prop;
  session_duration : float prop;
  suspended : bool prop;
  total_active_users : float prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?additional_routes:additional_routes list ->
  ?timeouts:timeouts ->
  host:string prop ->
  name:string prop ->
  new_users_per_minute:float prop ->
  total_active_users:float prop ->
  zone_id:string prop ->
  string ->
  t

val make :
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
  ?additional_routes:additional_routes list ->
  ?timeouts:timeouts ->
  host:string prop ->
  name:string prop ->
  new_users_per_minute:float prop ->
  total_active_users:float prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource

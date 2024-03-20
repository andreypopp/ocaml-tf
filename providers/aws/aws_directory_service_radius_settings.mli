(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_directory_service_radius_settings

val aws_directory_service_radius_settings :
  ?id:string prop ->
  ?use_same_username:bool prop ->
  ?timeouts:timeouts ->
  authentication_protocol:string prop ->
  directory_id:string prop ->
  display_label:string prop ->
  radius_port:float prop ->
  radius_retries:float prop ->
  radius_servers:string prop list ->
  radius_timeout:float prop ->
  shared_secret:string prop ->
  unit ->
  aws_directory_service_radius_settings

val yojson_of_aws_directory_service_radius_settings :
  aws_directory_service_radius_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_protocol : string prop;
  directory_id : string prop;
  display_label : string prop;
  id : string prop;
  radius_port : float prop;
  radius_retries : float prop;
  radius_servers : string list prop;
  radius_timeout : float prop;
  shared_secret : string prop;
  use_same_username : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?use_same_username:bool prop ->
  ?timeouts:timeouts ->
  authentication_protocol:string prop ->
  directory_id:string prop ->
  display_label:string prop ->
  radius_port:float prop ->
  radius_retries:float prop ->
  radius_servers:string prop list ->
  radius_timeout:float prop ->
  shared_secret:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?use_same_username:bool prop ->
  ?timeouts:timeouts ->
  authentication_protocol:string prop ->
  directory_id:string prop ->
  display_label:string prop ->
  radius_port:float prop ->
  radius_retries:float prop ->
  radius_servers:string prop list ->
  radius_timeout:float prop ->
  shared_secret:string prop ->
  string ->
  t Tf_core.resource

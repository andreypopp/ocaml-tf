(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_identity_platform_oauth_idp_config

val google_identity_platform_oauth_idp_config :
  ?client_secret:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  issuer:string prop ->
  name:string prop ->
  unit ->
  google_identity_platform_oauth_idp_config

val yojson_of_google_identity_platform_oauth_idp_config :
  google_identity_platform_oauth_idp_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  client_id : string prop;
  client_secret : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_secret:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  issuer:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?client_secret:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  issuer:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

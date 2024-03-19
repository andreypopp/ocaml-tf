(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_firebase_app_check_recaptcha_enterprise_config

val google_firebase_app_check_recaptcha_enterprise_config :
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  site_key:string prop ->
  unit ->
  google_firebase_app_check_recaptcha_enterprise_config

val yojson_of_google_firebase_app_check_recaptcha_enterprise_config :
  google_firebase_app_check_recaptcha_enterprise_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  site_key : string prop;
  token_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  site_key:string prop ->
  string ->
  t

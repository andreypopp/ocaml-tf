(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firebase_app_check_recaptcha_enterprise_config__timeouts
type google_firebase_app_check_recaptcha_enterprise_config

type t = private {
  app_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  site_key : string prop;
  token_ttl : string prop;
}

val google_firebase_app_check_recaptcha_enterprise_config :
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:
    google_firebase_app_check_recaptcha_enterprise_config__timeouts ->
  app_id:string prop ->
  site_key:string prop ->
  string ->
  t

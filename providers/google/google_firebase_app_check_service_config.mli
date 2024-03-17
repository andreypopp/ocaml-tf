(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firebase_app_check_service_config__timeouts
type google_firebase_app_check_service_config

type t = private {
  enforcement_mode : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
}

val google_firebase_app_check_service_config :
  ?enforcement_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_firebase_app_check_service_config__timeouts ->
  service_id:string prop ->
  string ->
  t

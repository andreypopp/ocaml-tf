(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firebase_app_check_debug_token__timeouts
type google_firebase_app_check_debug_token

type t = private {
  app_id : string prop;
  debug_token_id : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  token : string prop;
}

val google_firebase_app_check_debug_token :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_firebase_app_check_debug_token__timeouts ->
  app_id:string prop ->
  display_name:string prop ->
  token:string prop ->
  string ->
  t

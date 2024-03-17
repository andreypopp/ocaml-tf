(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_env_keystore__timeouts
type google_apigee_env_keystore

type t = private {
  aliases : string list prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
}

val google_apigee_env_keystore :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:google_apigee_env_keystore__timeouts ->
  env_id:string prop ->
  string ->
  t

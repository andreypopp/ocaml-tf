(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_env_references__timeouts
type google_apigee_env_references

type t = private {
  description : string prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
  refers : string prop;
  resource_type : string prop;
}

val google_apigee_env_references :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_apigee_env_references__timeouts ->
  env_id:string prop ->
  name:string prop ->
  refers:string prop ->
  resource_type:string prop ->
  string ->
  t

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

type google_apigee_envgroup

val google_apigee_envgroup :
  ?hostnames:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  org_id:string prop ->
  unit ->
  google_apigee_envgroup

val yojson_of_google_apigee_envgroup : google_apigee_envgroup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hostnames : string list prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?hostnames:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t

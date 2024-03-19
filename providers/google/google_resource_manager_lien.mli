(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_resource_manager_lien

val google_resource_manager_lien :
  ?id:string prop ->
  ?timeouts:timeouts ->
  origin:string prop ->
  parent:string prop ->
  reason:string prop ->
  restrictions:string prop list ->
  unit ->
  google_resource_manager_lien

val yojson_of_google_resource_manager_lien :
  google_resource_manager_lien -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  parent : string prop;
  reason : string prop;
  restrictions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  origin:string prop ->
  parent:string prop ->
  reason:string prop ->
  restrictions:string prop list ->
  string ->
  t

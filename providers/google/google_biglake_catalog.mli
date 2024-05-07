(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_biglake_catalog

val google_biglake_catalog :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_biglake_catalog

val yojson_of_google_biglake_catalog : google_biglake_catalog -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

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

type google_compute_project_metadata_item

val google_compute_project_metadata_item :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  key:string prop ->
  value:string prop ->
  unit ->
  google_compute_project_metadata_item

val yojson_of_google_compute_project_metadata_item :
  google_compute_project_metadata_item -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key : string prop;
  project : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  key:string prop ->
  value:string prop ->
  string ->
  t

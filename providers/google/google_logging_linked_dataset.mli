(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_dataset

val bigquery_dataset : unit -> bigquery_dataset

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_logging_linked_dataset

val google_logging_linked_dataset :
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?bigquery_dataset:bigquery_dataset list ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  link_id:string prop ->
  unit ->
  google_logging_linked_dataset

val yojson_of_google_logging_linked_dataset :
  google_logging_linked_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  lifecycle_state : string prop;
  link_id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?bigquery_dataset:bigquery_dataset list ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  link_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?bigquery_dataset:bigquery_dataset list ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  link_id:string prop ->
  string ->
  t Tf_core.resource

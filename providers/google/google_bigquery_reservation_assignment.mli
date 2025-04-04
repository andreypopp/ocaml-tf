(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_bigquery_reservation_assignment

val google_bigquery_reservation_assignment :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  assignee:string prop ->
  job_type:string prop ->
  reservation:string prop ->
  unit ->
  google_bigquery_reservation_assignment

val yojson_of_google_bigquery_reservation_assignment :
  google_bigquery_reservation_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assignee : string prop;
  id : string prop;
  job_type : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reservation : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  assignee:string prop ->
  job_type:string prop ->
  reservation:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  assignee:string prop ->
  job_type:string prop ->
  reservation:string prop ->
  string ->
  t Tf_core.resource

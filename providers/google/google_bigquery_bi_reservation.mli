(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type preferred_tables

val preferred_tables :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  ?table_id:string prop ->
  unit ->
  preferred_tables

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_bi_reservation

val google_bigquery_bi_reservation :
  ?id:string prop ->
  ?project:string prop ->
  ?size:float prop ->
  ?preferred_tables:preferred_tables list ->
  ?timeouts:timeouts ->
  location:string prop ->
  unit ->
  google_bigquery_bi_reservation

val yojson_of_google_bigquery_bi_reservation :
  google_bigquery_bi_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?size:float prop ->
  ?preferred_tables:preferred_tables list ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?size:float prop ->
  ?preferred_tables:preferred_tables list ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t Tf_core.resource

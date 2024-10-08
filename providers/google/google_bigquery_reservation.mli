(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscale

val autoscale : ?max_slots:float prop -> unit -> autoscale

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_reservation

val google_bigquery_reservation :
  ?concurrency:float prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?ignore_idle_slots:bool prop ->
  ?location:string prop ->
  ?multi_region_auxiliary:bool prop ->
  ?project:string prop ->
  ?autoscale:autoscale list ->
  ?timeouts:timeouts ->
  name:string prop ->
  slot_capacity:float prop ->
  unit ->
  google_bigquery_reservation

val yojson_of_google_bigquery_reservation :
  google_bigquery_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  concurrency : float prop;
  edition : string prop;
  id : string prop;
  ignore_idle_slots : bool prop;
  location : string prop;
  multi_region_auxiliary : bool prop;
  name : string prop;
  project : string prop;
  slot_capacity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?concurrency:float prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?ignore_idle_slots:bool prop ->
  ?location:string prop ->
  ?multi_region_auxiliary:bool prop ->
  ?project:string prop ->
  ?autoscale:autoscale list ->
  ?timeouts:timeouts ->
  name:string prop ->
  slot_capacity:float prop ->
  string ->
  t

val make :
  ?concurrency:float prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?ignore_idle_slots:bool prop ->
  ?location:string prop ->
  ?multi_region_auxiliary:bool prop ->
  ?project:string prop ->
  ?autoscale:autoscale list ->
  ?timeouts:timeouts ->
  name:string prop ->
  slot_capacity:float prop ->
  string ->
  t Tf_core.resource

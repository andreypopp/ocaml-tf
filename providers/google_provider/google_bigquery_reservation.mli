(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_reservation__autoscale
type google_bigquery_reservation__timeouts
type google_bigquery_reservation

val google_bigquery_reservation :
  ?concurrency:float ->
  ?edition:string ->
  ?id:string ->
  ?ignore_idle_slots:bool ->
  ?location:string ->
  ?multi_region_auxiliary:bool ->
  ?project:string ->
  ?timeouts:google_bigquery_reservation__timeouts ->
  name:string ->
  slot_capacity:float ->
  autoscale:google_bigquery_reservation__autoscale list ->
  string ->
  unit

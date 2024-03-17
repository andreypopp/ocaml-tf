(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_reservation__autoscale
type google_bigquery_reservation__timeouts
type google_bigquery_reservation

val google_bigquery_reservation :
  ?concurrency:float prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?ignore_idle_slots:bool prop ->
  ?location:string prop ->
  ?multi_region_auxiliary:bool prop ->
  ?project:string prop ->
  ?timeouts:google_bigquery_reservation__timeouts ->
  name:string prop ->
  slot_capacity:float prop ->
  autoscale:google_bigquery_reservation__autoscale list ->
  string ->
  unit

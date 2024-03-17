(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_bi_reservation__preferred_tables
type google_bigquery_bi_reservation__timeouts
type google_bigquery_bi_reservation

val google_bigquery_bi_reservation :
  ?size:float ->
  ?timeouts:google_bigquery_bi_reservation__timeouts ->
  location:string ->
  preferred_tables:
    google_bigquery_bi_reservation__preferred_tables list ->
  string ->
  unit

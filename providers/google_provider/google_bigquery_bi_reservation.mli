(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_bi_reservation__preferred_tables
type google_bigquery_bi_reservation__timeouts
type google_bigquery_bi_reservation

val google_bigquery_bi_reservation :
  ?id:string prop ->
  ?project:string prop ->
  ?size:float prop ->
  ?timeouts:google_bigquery_bi_reservation__timeouts ->
  location:string prop ->
  preferred_tables:
    google_bigquery_bi_reservation__preferred_tables list ->
  string ->
  unit

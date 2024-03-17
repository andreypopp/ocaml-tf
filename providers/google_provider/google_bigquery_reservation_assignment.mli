(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_reservation_assignment__timeouts
type google_bigquery_reservation_assignment

val google_bigquery_reservation_assignment :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  ?timeouts:google_bigquery_reservation_assignment__timeouts ->
  assignee:string ->
  job_type:string ->
  reservation:string ->
  string ->
  unit

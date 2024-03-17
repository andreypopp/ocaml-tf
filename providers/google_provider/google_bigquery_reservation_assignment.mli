(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_reservation_assignment__timeouts
type google_bigquery_reservation_assignment

type t = private {
  assignee : string prop;
  id : string prop;
  job_type : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reservation : string prop;
  state : string prop;
}

val google_bigquery_reservation_assignment :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:google_bigquery_reservation_assignment__timeouts ->
  assignee:string prop ->
  job_type:string prop ->
  reservation:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_linked_dataset__bigquery_dataset
type google_logging_linked_dataset__timeouts
type google_logging_linked_dataset

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

val google_logging_linked_dataset :
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?timeouts:google_logging_linked_dataset__timeouts ->
  bucket:string prop ->
  link_id:string prop ->
  bigquery_dataset:
    google_logging_linked_dataset__bigquery_dataset list ->
  string ->
  t

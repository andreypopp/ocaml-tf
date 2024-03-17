(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_linked_dataset__bigquery_dataset
type google_logging_linked_dataset__timeouts
type google_logging_linked_dataset

val google_logging_linked_dataset :
  ?description:string ->
  ?timeouts:google_logging_linked_dataset__timeouts ->
  bucket:string ->
  link_id:string ->
  bigquery_dataset:
    google_logging_linked_dataset__bigquery_dataset list ->
  string ->
  unit

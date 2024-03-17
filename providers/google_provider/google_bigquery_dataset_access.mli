(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_dataset_access__dataset__dataset
type google_bigquery_dataset_access__dataset
type google_bigquery_dataset_access__routine
type google_bigquery_dataset_access__timeouts
type google_bigquery_dataset_access__view
type google_bigquery_dataset_access

val google_bigquery_dataset_access :
  ?domain:string ->
  ?group_by_email:string ->
  ?iam_member:string ->
  ?id:string ->
  ?project:string ->
  ?role:string ->
  ?special_group:string ->
  ?user_by_email:string ->
  ?timeouts:google_bigquery_dataset_access__timeouts ->
  dataset_id:string ->
  dataset:google_bigquery_dataset_access__dataset list ->
  routine:google_bigquery_dataset_access__routine list ->
  view:google_bigquery_dataset_access__view list ->
  string ->
  unit

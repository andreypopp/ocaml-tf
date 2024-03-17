(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_dataset_access__dataset__dataset
type google_bigquery_dataset_access__dataset
type google_bigquery_dataset_access__routine
type google_bigquery_dataset_access__timeouts
type google_bigquery_dataset_access__view
type google_bigquery_dataset_access

val google_bigquery_dataset_access :
  ?domain:string prop ->
  ?group_by_email:string prop ->
  ?iam_member:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?role:string prop ->
  ?special_group:string prop ->
  ?user_by_email:string prop ->
  ?timeouts:google_bigquery_dataset_access__timeouts ->
  dataset_id:string prop ->
  dataset:google_bigquery_dataset_access__dataset list ->
  routine:google_bigquery_dataset_access__routine list ->
  view:google_bigquery_dataset_access__view list ->
  string ->
  unit

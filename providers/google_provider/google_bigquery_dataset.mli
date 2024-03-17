(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_dataset__access__dataset__dataset
type google_bigquery_dataset__access__dataset
type google_bigquery_dataset__access__routine
type google_bigquery_dataset__access__view
type google_bigquery_dataset__access
type google_bigquery_dataset__default_encryption_configuration
type google_bigquery_dataset__timeouts
type google_bigquery_dataset

val google_bigquery_dataset :
  ?default_partition_expiration_ms:float ->
  ?default_table_expiration_ms:float ->
  ?delete_contents_on_destroy:bool ->
  ?description:string ->
  ?friendly_name:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?timeouts:google_bigquery_dataset__timeouts ->
  dataset_id:string ->
  access:google_bigquery_dataset__access list ->
  default_encryption_configuration:
    google_bigquery_dataset__default_encryption_configuration list ->
  string ->
  unit

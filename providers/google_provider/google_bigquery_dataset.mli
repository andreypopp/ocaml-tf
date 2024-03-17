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

type t = private {
  creation_time : float prop;
  dataset_id : string prop;
  default_collation : string prop;
  default_partition_expiration_ms : float prop;
  default_table_expiration_ms : float prop;
  delete_contents_on_destroy : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  friendly_name : string prop;
  id : string prop;
  is_case_insensitive : bool prop;
  labels : (string * string) list prop;
  last_modified_time : float prop;
  location : string prop;
  max_time_travel_hours : string prop;
  project : string prop;
  self_link : string prop;
  storage_billing_model : string prop;
  terraform_labels : (string * string) list prop;
}

val google_bigquery_dataset :
  ?default_collation:string prop ->
  ?default_partition_expiration_ms:float prop ->
  ?default_table_expiration_ms:float prop ->
  ?delete_contents_on_destroy:bool prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?is_case_insensitive:bool prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?max_time_travel_hours:string prop ->
  ?project:string prop ->
  ?storage_billing_model:string prop ->
  ?timeouts:google_bigquery_dataset__timeouts ->
  dataset_id:string prop ->
  access:google_bigquery_dataset__access list ->
  default_encryption_configuration:
    google_bigquery_dataset__default_encryption_configuration list ->
  string ->
  t

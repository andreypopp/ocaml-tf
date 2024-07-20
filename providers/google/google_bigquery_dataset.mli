(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access__dataset__dataset

val access__dataset__dataset :
  dataset_id:string prop ->
  project_id:string prop ->
  unit ->
  access__dataset__dataset

type access__dataset

val access__dataset :
  target_types:string prop list ->
  dataset:access__dataset__dataset list ->
  unit ->
  access__dataset

type access__routine

val access__routine :
  dataset_id:string prop ->
  project_id:string prop ->
  routine_id:string prop ->
  unit ->
  access__routine

type access__view

val access__view :
  dataset_id:string prop ->
  project_id:string prop ->
  table_id:string prop ->
  unit ->
  access__view

type access

val access :
  ?domain:string prop ->
  ?group_by_email:string prop ->
  ?iam_member:string prop ->
  ?role:string prop ->
  ?special_group:string prop ->
  ?user_by_email:string prop ->
  ?dataset:access__dataset list ->
  ?routine:access__routine list ->
  ?view:access__view list ->
  unit ->
  access

type default_encryption_configuration

val default_encryption_configuration :
  kms_key_name:string prop ->
  unit ->
  default_encryption_configuration

type external_dataset_reference

val external_dataset_reference :
  connection:string prop ->
  external_source:string prop ->
  unit ->
  external_dataset_reference

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_dataset

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
  ?default_encryption_configuration:
    default_encryption_configuration list ->
  ?external_dataset_reference:external_dataset_reference list ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  access:access list ->
  unit ->
  google_bigquery_dataset

val yojson_of_google_bigquery_dataset :
  google_bigquery_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
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
  ?default_encryption_configuration:
    default_encryption_configuration list ->
  ?external_dataset_reference:external_dataset_reference list ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  access:access list ->
  string ->
  t

val make :
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
  ?default_encryption_configuration:
    default_encryption_configuration list ->
  ?external_dataset_reference:external_dataset_reference list ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  access:access list ->
  string ->
  t Tf_core.resource

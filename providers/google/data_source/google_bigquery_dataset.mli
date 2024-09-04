(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access__view = {
  dataset_id : string prop;  (** dataset_id *)
  project_id : string prop;  (** project_id *)
  table_id : string prop;  (** table_id *)
}

type access__routine = {
  dataset_id : string prop;  (** dataset_id *)
  project_id : string prop;  (** project_id *)
  routine_id : string prop;  (** routine_id *)
}

type access__dataset__dataset = {
  dataset_id : string prop;  (** dataset_id *)
  project_id : string prop;  (** project_id *)
}

type access__dataset = {
  dataset : access__dataset__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dataset *)
  target_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target_types *)
}

type access = {
  dataset : access__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dataset *)
  domain : string prop;  (** domain *)
  group_by_email : string prop;  (** group_by_email *)
  iam_member : string prop;  (** iam_member *)
  role : string prop;  (** role *)
  routine : access__routine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** routine *)
  special_group : string prop;  (** special_group *)
  user_by_email : string prop;  (** user_by_email *)
  view : access__view list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** view *)
}

type default_encryption_configuration = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type external_dataset_reference = {
  connection : string prop;  (** connection *)
  external_source : string prop;  (** external_source *)
}

type google_bigquery_dataset

val google_bigquery_dataset :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  unit ->
  google_bigquery_dataset

val yojson_of_google_bigquery_dataset :
  google_bigquery_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access : access list prop;
  creation_time : float prop;
  dataset_id : string prop;
  default_collation : string prop;
  default_encryption_configuration :
    default_encryption_configuration list prop;
  default_partition_expiration_ms : float prop;
  default_table_expiration_ms : float prop;
  delete_contents_on_destroy : bool prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  external_dataset_reference : external_dataset_reference list prop;
  friendly_name : string prop;
  id : string prop;
  is_case_insensitive : bool prop;
  labels : string Tf_core.assoc prop;
  last_modified_time : float prop;
  location : string prop;
  max_time_travel_hours : string prop;
  project : string prop;
  self_link : string prop;
  storage_billing_model : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoclass = {
  enabled : bool prop;  (** enabled *)
  terminal_storage_class : string prop;  (** terminal_storage_class *)
}

type cors = {
  max_age_seconds : float prop;  (** max_age_seconds *)
  method_ : string prop list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "method"]
      (** method *)
  origin : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** origin *)
  response_header : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** response_header *)
}

type custom_placement_config = {
  data_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** data_locations *)
}

type encryption = {
  default_kms_key_name : string prop;  (** default_kms_key_name *)
}

type lifecycle_rule__condition = {
  age : float prop;  (** age *)
  created_before : string prop;  (** created_before *)
  custom_time_before : string prop;  (** custom_time_before *)
  days_since_custom_time : float prop;  (** days_since_custom_time *)
  days_since_noncurrent_time : float prop;
      (** days_since_noncurrent_time *)
  matches_prefix : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** matches_prefix *)
  matches_storage_class : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** matches_storage_class *)
  matches_suffix : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** matches_suffix *)
  no_age : bool prop;  (** no_age *)
  noncurrent_time_before : string prop;
      (** noncurrent_time_before *)
  num_newer_versions : float prop;  (** num_newer_versions *)
  send_days_since_custom_time_if_zero : bool prop;
      (** send_days_since_custom_time_if_zero *)
  send_days_since_noncurrent_time_if_zero : bool prop;
      (** send_days_since_noncurrent_time_if_zero *)
  send_num_newer_versions_if_zero : bool prop;
      (** send_num_newer_versions_if_zero *)
  with_state : string prop;  (** with_state *)
}

type lifecycle_rule__action = {
  storage_class : string prop;  (** storage_class *)
  type_ : string prop; [@key "type"]  (** type *)
}

type lifecycle_rule = {
  action : lifecycle_rule__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  condition : lifecycle_rule__condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** condition *)
}

type logging = {
  log_bucket : string prop;  (** log_bucket *)
  log_object_prefix : string prop;  (** log_object_prefix *)
}

type retention_policy = {
  is_locked : bool prop;  (** is_locked *)
  retention_period : float prop;  (** retention_period *)
}

type soft_delete_policy = {
  effective_time : string prop;  (** effective_time *)
  retention_duration_seconds : float prop;
      (** retention_duration_seconds *)
}

type versioning = { enabled : bool prop  (** enabled *) }

type website = {
  main_page_suffix : string prop;  (** main_page_suffix *)
  not_found_page : string prop;  (** not_found_page *)
}

type google_storage_bucket

val google_storage_bucket :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_storage_bucket

val yojson_of_google_storage_bucket : google_storage_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  autoclass : autoclass list prop;
  cors : cors list prop;
  custom_placement_config : custom_placement_config list prop;
  default_event_based_hold : bool prop;
  effective_labels : (string * string) list prop;
  enable_object_retention : bool prop;
  encryption : encryption list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  lifecycle_rule : lifecycle_rule list prop;
  location : string prop;
  logging : logging list prop;
  name : string prop;
  project : string prop;
  project_number : float prop;
  public_access_prevention : string prop;
  requester_pays : bool prop;
  retention_policy : retention_policy list prop;
  rpo : string prop;
  self_link : string prop;
  soft_delete_policy : soft_delete_policy list prop;
  storage_class : string prop;
  terraform_labels : (string * string) list prop;
  uniform_bucket_level_access : bool prop;
  url : string prop;
  versioning : versioning list prop;
  website : website list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoclass

val autoclass :
  ?terminal_storage_class:string prop ->
  enabled:bool prop ->
  unit ->
  autoclass

type cors

val cors :
  ?max_age_seconds:float prop ->
  ?method_:string prop list ->
  ?origin:string prop list ->
  ?response_header:string prop list ->
  unit ->
  cors

type custom_placement_config

val custom_placement_config :
  data_locations:string prop list -> unit -> custom_placement_config

type encryption

val encryption :
  default_kms_key_name:string prop -> unit -> encryption

type lifecycle_rule__action

val lifecycle_rule__action :
  ?storage_class:string prop ->
  type_:string prop ->
  unit ->
  lifecycle_rule__action

type lifecycle_rule__condition

val lifecycle_rule__condition :
  ?age:float prop ->
  ?created_before:string prop ->
  ?custom_time_before:string prop ->
  ?days_since_custom_time:float prop ->
  ?days_since_noncurrent_time:float prop ->
  ?matches_prefix:string prop list ->
  ?matches_storage_class:string prop list ->
  ?matches_suffix:string prop list ->
  ?no_age:bool prop ->
  ?noncurrent_time_before:string prop ->
  ?num_newer_versions:float prop ->
  ?send_days_since_custom_time_if_zero:bool prop ->
  ?send_days_since_noncurrent_time_if_zero:bool prop ->
  ?send_num_newer_versions_if_zero:bool prop ->
  ?with_state:string prop ->
  unit ->
  lifecycle_rule__condition

type lifecycle_rule

val lifecycle_rule :
  action:lifecycle_rule__action list ->
  condition:lifecycle_rule__condition list ->
  unit ->
  lifecycle_rule

type logging

val logging :
  ?log_object_prefix:string prop ->
  log_bucket:string prop ->
  unit ->
  logging

type retention_policy

val retention_policy :
  ?is_locked:bool prop ->
  retention_period:float prop ->
  unit ->
  retention_policy

type soft_delete_policy

val soft_delete_policy :
  ?retention_duration_seconds:float prop ->
  unit ->
  soft_delete_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type versioning

val versioning : enabled:bool prop -> unit -> versioning

type website

val website :
  ?main_page_suffix:string prop ->
  ?not_found_page:string prop ->
  unit ->
  website

type google_storage_bucket

val google_storage_bucket :
  ?default_event_based_hold:bool prop ->
  ?enable_object_retention:bool prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?public_access_prevention:string prop ->
  ?requester_pays:bool prop ->
  ?rpo:string prop ->
  ?storage_class:string prop ->
  ?uniform_bucket_level_access:bool prop ->
  ?autoclass:autoclass list ->
  ?cors:cors list ->
  ?custom_placement_config:custom_placement_config list ->
  ?encryption:encryption list ->
  ?lifecycle_rule:lifecycle_rule list ->
  ?logging:logging list ->
  ?retention_policy:retention_policy list ->
  ?soft_delete_policy:soft_delete_policy list ->
  ?timeouts:timeouts ->
  ?versioning:versioning list ->
  ?website:website list ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_storage_bucket

val yojson_of_google_storage_bucket : google_storage_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_event_based_hold : bool prop;
  effective_labels : string Tf_core.assoc prop;
  enable_object_retention : bool prop;
  force_destroy : bool prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  project_number : float prop;
  public_access_prevention : string prop;
  requester_pays : bool prop;
  rpo : string prop;
  self_link : string prop;
  storage_class : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uniform_bucket_level_access : bool prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_event_based_hold:bool prop ->
  ?enable_object_retention:bool prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?public_access_prevention:string prop ->
  ?requester_pays:bool prop ->
  ?rpo:string prop ->
  ?storage_class:string prop ->
  ?uniform_bucket_level_access:bool prop ->
  ?autoclass:autoclass list ->
  ?cors:cors list ->
  ?custom_placement_config:custom_placement_config list ->
  ?encryption:encryption list ->
  ?lifecycle_rule:lifecycle_rule list ->
  ?logging:logging list ->
  ?retention_policy:retention_policy list ->
  ?soft_delete_policy:soft_delete_policy list ->
  ?timeouts:timeouts ->
  ?versioning:versioning list ->
  ?website:website list ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?default_event_based_hold:bool prop ->
  ?enable_object_retention:bool prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?public_access_prevention:string prop ->
  ?requester_pays:bool prop ->
  ?rpo:string prop ->
  ?storage_class:string prop ->
  ?uniform_bucket_level_access:bool prop ->
  ?autoclass:autoclass list ->
  ?cors:cors list ->
  ?custom_placement_config:custom_placement_config list ->
  ?encryption:encryption list ->
  ?lifecycle_rule:lifecycle_rule list ->
  ?logging:logging list ->
  ?retention_policy:retention_policy list ->
  ?soft_delete_policy:soft_delete_policy list ->
  ?timeouts:timeouts ->
  ?versioning:versioning list ->
  ?website:website list ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

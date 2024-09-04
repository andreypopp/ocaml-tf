(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_rule

val cors_rule :
  ?allowed_headers:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age_seconds:float prop ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  unit ->
  cors_rule

type grant

val grant :
  ?id:string prop ->
  ?uri:string prop ->
  permissions:string prop list ->
  type_:string prop ->
  unit ->
  grant

type lifecycle_rule__expiration

val lifecycle_rule__expiration :
  ?date:string prop ->
  ?days:float prop ->
  ?expired_object_delete_marker:bool prop ->
  unit ->
  lifecycle_rule__expiration

type lifecycle_rule__noncurrent_version_expiration

val lifecycle_rule__noncurrent_version_expiration :
  ?days:float prop ->
  unit ->
  lifecycle_rule__noncurrent_version_expiration

type lifecycle_rule__noncurrent_version_transition

val lifecycle_rule__noncurrent_version_transition :
  ?days:float prop ->
  storage_class:string prop ->
  unit ->
  lifecycle_rule__noncurrent_version_transition

type lifecycle_rule__transition

val lifecycle_rule__transition :
  ?date:string prop ->
  ?days:float prop ->
  storage_class:string prop ->
  unit ->
  lifecycle_rule__transition

type lifecycle_rule

val lifecycle_rule :
  ?abort_incomplete_multipart_upload_days:float prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?expiration:lifecycle_rule__expiration list ->
  ?noncurrent_version_expiration:
    lifecycle_rule__noncurrent_version_expiration list ->
  enabled:bool prop ->
  noncurrent_version_transition:
    lifecycle_rule__noncurrent_version_transition list ->
  transition:lifecycle_rule__transition list ->
  unit ->
  lifecycle_rule

type logging

val logging :
  ?target_prefix:string prop ->
  target_bucket:string prop ->
  unit ->
  logging

type object_lock_configuration__rule__default_retention

val object_lock_configuration__rule__default_retention :
  ?days:float prop ->
  ?years:float prop ->
  mode:string prop ->
  unit ->
  object_lock_configuration__rule__default_retention

type object_lock_configuration__rule

val object_lock_configuration__rule :
  default_retention:
    object_lock_configuration__rule__default_retention list ->
  unit ->
  object_lock_configuration__rule

type object_lock_configuration

val object_lock_configuration :
  ?object_lock_enabled:string prop ->
  ?rule:object_lock_configuration__rule list ->
  unit ->
  object_lock_configuration

type replication_configuration__rules__destination__access_control_translation

val replication_configuration__rules__destination__access_control_translation :
  owner:string prop ->
  unit ->
  replication_configuration__rules__destination__access_control_translation

type replication_configuration__rules__destination__metrics

val replication_configuration__rules__destination__metrics :
  ?minutes:float prop ->
  ?status:string prop ->
  unit ->
  replication_configuration__rules__destination__metrics

type replication_configuration__rules__destination__replication_time

val replication_configuration__rules__destination__replication_time :
  ?minutes:float prop ->
  ?status:string prop ->
  unit ->
  replication_configuration__rules__destination__replication_time

type replication_configuration__rules__destination

val replication_configuration__rules__destination :
  ?account_id:string prop ->
  ?replica_kms_key_id:string prop ->
  ?storage_class:string prop ->
  ?access_control_translation:
    replication_configuration__rules__destination__access_control_translation
    list ->
  ?metrics:
    replication_configuration__rules__destination__metrics list ->
  ?replication_time:
    replication_configuration__rules__destination__replication_time
    list ->
  bucket:string prop ->
  unit ->
  replication_configuration__rules__destination

type replication_configuration__rules__filter

val replication_configuration__rules__filter :
  ?prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  replication_configuration__rules__filter

type replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects

val replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects :
  enabled:bool prop ->
  unit ->
  replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects

type replication_configuration__rules__source_selection_criteria

val replication_configuration__rules__source_selection_criteria :
  ?sse_kms_encrypted_objects:
    replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    list ->
  unit ->
  replication_configuration__rules__source_selection_criteria

type replication_configuration__rules

val replication_configuration__rules :
  ?delete_marker_replication_status:string prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?priority:float prop ->
  ?filter:replication_configuration__rules__filter list ->
  ?source_selection_criteria:
    replication_configuration__rules__source_selection_criteria list ->
  status:string prop ->
  destination:replication_configuration__rules__destination list ->
  unit ->
  replication_configuration__rules

type replication_configuration

val replication_configuration :
  role:string prop ->
  rules:replication_configuration__rules list ->
  unit ->
  replication_configuration

type server_side_encryption_configuration__rule__apply_server_side_encryption_by_default

val server_side_encryption_configuration__rule__apply_server_side_encryption_by_default :
  ?kms_master_key_id:string prop ->
  sse_algorithm:string prop ->
  unit ->
  server_side_encryption_configuration__rule__apply_server_side_encryption_by_default

type server_side_encryption_configuration__rule

val server_side_encryption_configuration__rule :
  ?bucket_key_enabled:bool prop ->
  apply_server_side_encryption_by_default:
    server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    list ->
  unit ->
  server_side_encryption_configuration__rule

type server_side_encryption_configuration

val server_side_encryption_configuration :
  rule:server_side_encryption_configuration__rule list ->
  unit ->
  server_side_encryption_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type versioning

val versioning :
  ?enabled:bool prop -> ?mfa_delete:bool prop -> unit -> versioning

type website

val website :
  ?error_document:string prop ->
  ?index_document:string prop ->
  ?redirect_all_requests_to:string prop ->
  ?routing_rules:string prop ->
  unit ->
  website

type aws_s3_bucket

val aws_s3_bucket :
  ?acceleration_status:string prop ->
  ?acl:string prop ->
  ?bucket:string prop ->
  ?bucket_prefix:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?object_lock_enabled:bool prop ->
  ?policy:string prop ->
  ?request_payer:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?cors_rule:cors_rule list ->
  ?lifecycle_rule:lifecycle_rule list ->
  ?logging:logging list ->
  ?object_lock_configuration:object_lock_configuration list ->
  ?replication_configuration:replication_configuration list ->
  ?server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  ?timeouts:timeouts ->
  ?versioning:versioning list ->
  ?website:website list ->
  grant:grant list ->
  unit ->
  aws_s3_bucket

val yojson_of_aws_s3_bucket : aws_s3_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acceleration_status : string prop;
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_domain_name : string prop;
  bucket_prefix : string prop;
  bucket_regional_domain_name : string prop;
  force_destroy : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  object_lock_enabled : bool prop;
  policy : string prop;
  region : string prop;
  request_payer : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?acceleration_status:string prop ->
  ?acl:string prop ->
  ?bucket:string prop ->
  ?bucket_prefix:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?object_lock_enabled:bool prop ->
  ?policy:string prop ->
  ?request_payer:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?cors_rule:cors_rule list ->
  ?lifecycle_rule:lifecycle_rule list ->
  ?logging:logging list ->
  ?object_lock_configuration:object_lock_configuration list ->
  ?replication_configuration:replication_configuration list ->
  ?server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  ?timeouts:timeouts ->
  ?versioning:versioning list ->
  ?website:website list ->
  grant:grant list ->
  string ->
  t

val make :
  ?acceleration_status:string prop ->
  ?acl:string prop ->
  ?bucket:string prop ->
  ?bucket_prefix:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?object_lock_enabled:bool prop ->
  ?policy:string prop ->
  ?request_payer:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?cors_rule:cors_rule list ->
  ?lifecycle_rule:lifecycle_rule list ->
  ?logging:logging list ->
  ?object_lock_configuration:object_lock_configuration list ->
  ?replication_configuration:replication_configuration list ->
  ?server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  ?timeouts:timeouts ->
  ?versioning:versioning list ->
  ?website:website list ->
  grant:grant list ->
  string ->
  t Tf_core.resource

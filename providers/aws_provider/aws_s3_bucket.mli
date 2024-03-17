(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket__cors_rule
type aws_s3_bucket__grant
type aws_s3_bucket__lifecycle_rule__expiration
type aws_s3_bucket__lifecycle_rule__noncurrent_version_expiration
type aws_s3_bucket__lifecycle_rule__noncurrent_version_transition
type aws_s3_bucket__lifecycle_rule__transition
type aws_s3_bucket__lifecycle_rule
type aws_s3_bucket__logging
type aws_s3_bucket__object_lock_configuration__rule__default_retention
type aws_s3_bucket__object_lock_configuration__rule
type aws_s3_bucket__object_lock_configuration

type aws_s3_bucket__replication_configuration__rules__destination__access_control_translation

type aws_s3_bucket__replication_configuration__rules__destination__metrics

type aws_s3_bucket__replication_configuration__rules__destination__replication_time

type aws_s3_bucket__replication_configuration__rules__destination
type aws_s3_bucket__replication_configuration__rules__filter

type aws_s3_bucket__replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects

type aws_s3_bucket__replication_configuration__rules__source_selection_criteria

type aws_s3_bucket__replication_configuration__rules
type aws_s3_bucket__replication_configuration

type aws_s3_bucket__server_side_encryption_configuration__rule__apply_server_side_encryption_by_default

type aws_s3_bucket__server_side_encryption_configuration__rule
type aws_s3_bucket__server_side_encryption_configuration
type aws_s3_bucket__timeouts
type aws_s3_bucket__versioning
type aws_s3_bucket__website
type aws_s3_bucket

val aws_s3_bucket :
  ?acceleration_status:string ->
  ?acl:string ->
  ?bucket:string ->
  ?bucket_prefix:string ->
  ?force_destroy:bool ->
  ?id:string ->
  ?object_lock_enabled:bool ->
  ?policy:string ->
  ?request_payer:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_s3_bucket__timeouts ->
  cors_rule:aws_s3_bucket__cors_rule list ->
  grant:aws_s3_bucket__grant list ->
  lifecycle_rule:aws_s3_bucket__lifecycle_rule list ->
  logging:aws_s3_bucket__logging list ->
  object_lock_configuration:
    aws_s3_bucket__object_lock_configuration list ->
  replication_configuration:
    aws_s3_bucket__replication_configuration list ->
  server_side_encryption_configuration:
    aws_s3_bucket__server_side_encryption_configuration list ->
  versioning:aws_s3_bucket__versioning list ->
  website:aws_s3_bucket__website list ->
  string ->
  unit

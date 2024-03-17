(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_table__attribute
type aws_dynamodb_table__global_secondary_index
type aws_dynamodb_table__import_table__input_format_options__csv
type aws_dynamodb_table__import_table__input_format_options
type aws_dynamodb_table__import_table__s3_bucket_source
type aws_dynamodb_table__import_table
type aws_dynamodb_table__local_secondary_index
type aws_dynamodb_table__point_in_time_recovery
type aws_dynamodb_table__replica
type aws_dynamodb_table__server_side_encryption
type aws_dynamodb_table__timeouts
type aws_dynamodb_table__ttl
type aws_dynamodb_table

val aws_dynamodb_table :
  ?billing_mode:string ->
  ?deletion_protection_enabled:bool ->
  ?range_key:string ->
  ?restore_date_time:string ->
  ?restore_source_name:string ->
  ?restore_to_latest_time:bool ->
  ?stream_enabled:bool ->
  ?table_class:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_dynamodb_table__timeouts ->
  name:string ->
  attribute:aws_dynamodb_table__attribute list ->
  global_secondary_index:
    aws_dynamodb_table__global_secondary_index list ->
  import_table:aws_dynamodb_table__import_table list ->
  local_secondary_index:
    aws_dynamodb_table__local_secondary_index list ->
  point_in_time_recovery:
    aws_dynamodb_table__point_in_time_recovery list ->
  replica:aws_dynamodb_table__replica list ->
  server_side_encryption:
    aws_dynamodb_table__server_side_encryption list ->
  ttl:aws_dynamodb_table__ttl list ->
  string ->
  unit

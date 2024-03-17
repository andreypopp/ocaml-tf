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

type t = private {
  arn : string prop;
  billing_mode : string prop;
  deletion_protection_enabled : bool prop;
  hash_key : string prop;
  id : string prop;
  name : string prop;
  range_key : string prop;
  read_capacity : float prop;
  restore_date_time : string prop;
  restore_source_name : string prop;
  restore_to_latest_time : bool prop;
  stream_arn : string prop;
  stream_enabled : bool prop;
  stream_label : string prop;
  stream_view_type : string prop;
  table_class : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  write_capacity : float prop;
}

val aws_dynamodb_table :
  ?billing_mode:string prop ->
  ?deletion_protection_enabled:bool prop ->
  ?hash_key:string prop ->
  ?id:string prop ->
  ?range_key:string prop ->
  ?read_capacity:float prop ->
  ?restore_date_time:string prop ->
  ?restore_source_name:string prop ->
  ?restore_to_latest_time:bool prop ->
  ?stream_enabled:bool prop ->
  ?stream_view_type:string prop ->
  ?table_class:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?write_capacity:float prop ->
  ?timeouts:aws_dynamodb_table__timeouts ->
  name:string prop ->
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
  t

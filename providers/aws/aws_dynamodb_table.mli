(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attribute

val attribute :
  name:string prop -> type_:string prop -> unit -> attribute

type global_secondary_index

val global_secondary_index :
  ?non_key_attributes:string prop list ->
  ?range_key:string prop ->
  ?read_capacity:float prop ->
  ?write_capacity:float prop ->
  hash_key:string prop ->
  name:string prop ->
  projection_type:string prop ->
  unit ->
  global_secondary_index

type import_table__input_format_options__csv

val import_table__input_format_options__csv :
  ?delimiter:string prop ->
  ?header_list:string prop list ->
  unit ->
  import_table__input_format_options__csv

type import_table__input_format_options

val import_table__input_format_options :
  ?csv:import_table__input_format_options__csv list ->
  unit ->
  import_table__input_format_options

type import_table__s3_bucket_source

val import_table__s3_bucket_source :
  ?bucket_owner:string prop ->
  ?key_prefix:string prop ->
  bucket:string prop ->
  unit ->
  import_table__s3_bucket_source

type import_table

val import_table :
  ?input_compression_type:string prop ->
  ?input_format_options:import_table__input_format_options list ->
  input_format:string prop ->
  s3_bucket_source:import_table__s3_bucket_source list ->
  unit ->
  import_table

type local_secondary_index

val local_secondary_index :
  ?non_key_attributes:string prop list ->
  name:string prop ->
  projection_type:string prop ->
  range_key:string prop ->
  unit ->
  local_secondary_index

type point_in_time_recovery

val point_in_time_recovery :
  enabled:bool prop -> unit -> point_in_time_recovery

type replica

val replica :
  ?kms_key_arn:string prop ->
  ?point_in_time_recovery:bool prop ->
  ?propagate_tags:bool prop ->
  region_name:string prop ->
  unit ->
  replica

type server_side_encryption

val server_side_encryption :
  ?kms_key_arn:string prop ->
  enabled:bool prop ->
  unit ->
  server_side_encryption

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type ttl

val ttl :
  ?enabled:bool prop -> attribute_name:string prop -> unit -> ttl

type aws_dynamodb_table

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
  ?import_table:import_table list ->
  ?point_in_time_recovery:point_in_time_recovery list ->
  ?server_side_encryption:server_side_encryption list ->
  ?timeouts:timeouts ->
  ?ttl:ttl list ->
  name:string prop ->
  attribute:attribute list ->
  global_secondary_index:global_secondary_index list ->
  local_secondary_index:local_secondary_index list ->
  replica:replica list ->
  unit ->
  aws_dynamodb_table

val yojson_of_aws_dynamodb_table : aws_dynamodb_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
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
  ?import_table:import_table list ->
  ?point_in_time_recovery:point_in_time_recovery list ->
  ?server_side_encryption:server_side_encryption list ->
  ?timeouts:timeouts ->
  ?ttl:ttl list ->
  name:string prop ->
  attribute:attribute list ->
  global_secondary_index:global_secondary_index list ->
  local_secondary_index:local_secondary_index list ->
  replica:replica list ->
  string ->
  t

val make :
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
  ?import_table:import_table list ->
  ?point_in_time_recovery:point_in_time_recovery list ->
  ?server_side_encryption:server_side_encryption list ->
  ?timeouts:timeouts ->
  ?ttl:ttl list ->
  name:string prop ->
  attribute:attribute list ->
  global_secondary_index:global_secondary_index list ->
  local_secondary_index:local_secondary_index list ->
  replica:replica list ->
  string ->
  t Tf_core.resource

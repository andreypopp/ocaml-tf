(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attribute = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type global_secondary_index = {
  hash_key : string prop;  (** hash_key *)
  name : string prop;  (** name *)
  non_key_attributes : string prop list;  (** non_key_attributes *)
  projection_type : string prop;  (** projection_type *)
  range_key : string prop;  (** range_key *)
  read_capacity : float prop;  (** read_capacity *)
  write_capacity : float prop;  (** write_capacity *)
}

type local_secondary_index = {
  name : string prop;  (** name *)
  non_key_attributes : string prop list;  (** non_key_attributes *)
  projection_type : string prop;  (** projection_type *)
  range_key : string prop;  (** range_key *)
}

type point_in_time_recovery = { enabled : bool prop  (** enabled *) }

type replica = {
  kms_key_arn : string prop;  (** kms_key_arn *)
  region_name : string prop;  (** region_name *)
}

type ttl = {
  attribute_name : string prop;  (** attribute_name *)
  enabled : bool prop;  (** enabled *)
}

type server_side_encryption

val server_side_encryption : unit -> server_side_encryption

type aws_dynamodb_table

val aws_dynamodb_table :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  server_side_encryption:server_side_encryption list ->
  unit ->
  aws_dynamodb_table

val yojson_of_aws_dynamodb_table : aws_dynamodb_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  attribute : attribute list prop;
  billing_mode : string prop;
  deletion_protection_enabled : bool prop;
  global_secondary_index : global_secondary_index list prop;
  hash_key : string prop;
  id : string prop;
  local_secondary_index : local_secondary_index list prop;
  name : string prop;
  point_in_time_recovery : point_in_time_recovery list prop;
  range_key : string prop;
  read_capacity : float prop;
  replica : replica list prop;
  stream_arn : string prop;
  stream_enabled : bool prop;
  stream_label : string prop;
  stream_view_type : string prop;
  table_class : string prop;
  tags : (string * string) list prop;
  ttl : ttl list prop;
  write_capacity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  server_side_encryption:server_side_encryption list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  server_side_encryption:server_side_encryption list ->
  string ->
  t Tf_core.resource

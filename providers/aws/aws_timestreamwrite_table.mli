(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration

type aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location

type aws_timestreamwrite_table__magnetic_store_write_properties
type aws_timestreamwrite_table__retention_properties
type aws_timestreamwrite_table__schema__composite_partition_key
type aws_timestreamwrite_table__schema
type aws_timestreamwrite_table

type t = private {
  arn : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_timestreamwrite_table :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  database_name:string prop ->
  table_name:string prop ->
  magnetic_store_write_properties:
    aws_timestreamwrite_table__magnetic_store_write_properties list ->
  retention_properties:
    aws_timestreamwrite_table__retention_properties list ->
  schema:aws_timestreamwrite_table__schema list ->
  string ->
  t

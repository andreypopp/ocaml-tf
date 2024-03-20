(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type partition_index

val partition_index :
  ?index_name:string prop ->
  ?keys:string prop list ->
  unit ->
  partition_index

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_glue_partition_index

val aws_glue_partition_index :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database_name:string prop ->
  table_name:string prop ->
  partition_index:partition_index list ->
  unit ->
  aws_glue_partition_index

val yojson_of_aws_glue_partition_index :
  aws_glue_partition_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  catalog_id : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database_name:string prop ->
  table_name:string prop ->
  partition_index:partition_index list ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database_name:string prop ->
  table_name:string prop ->
  partition_index:partition_index list ->
  string ->
  t Tf_core.resource

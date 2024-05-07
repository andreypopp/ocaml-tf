(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type global_cluster_members = {
  db_cluster_arn : string prop;  (** db_cluster_arn *)
  is_writer : bool prop;  (** is_writer *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_neptune_global_cluster

val aws_neptune_global_cluster :
  ?deletion_protection:bool prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?source_db_cluster_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?timeouts:timeouts ->
  global_cluster_identifier:string prop ->
  unit ->
  aws_neptune_global_cluster

val yojson_of_aws_neptune_global_cluster :
  aws_neptune_global_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  deletion_protection : bool prop;
  engine : string prop;
  engine_version : string prop;
  global_cluster_identifier : string prop;
  global_cluster_members : global_cluster_members list prop;
  global_cluster_resource_id : string prop;
  id : string prop;
  source_db_cluster_identifier : string prop;
  status : string prop;
  storage_encrypted : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:bool prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?source_db_cluster_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?timeouts:timeouts ->
  global_cluster_identifier:string prop ->
  string ->
  t

val make :
  ?deletion_protection:bool prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?source_db_cluster_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?timeouts:timeouts ->
  global_cluster_identifier:string prop ->
  string ->
  t Tf_core.resource

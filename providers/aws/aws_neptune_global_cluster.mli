(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_global_cluster__timeouts

type aws_neptune_global_cluster__global_cluster_members = {
  db_cluster_arn : string prop;  (** db_cluster_arn *)
  is_writer : bool prop;  (** is_writer *)
}

type aws_neptune_global_cluster

type t = private {
  arn : string prop;
  deletion_protection : bool prop;
  engine : string prop;
  engine_version : string prop;
  global_cluster_identifier : string prop;
  global_cluster_members :
    aws_neptune_global_cluster__global_cluster_members list prop;
  global_cluster_resource_id : string prop;
  id : string prop;
  source_db_cluster_identifier : string prop;
  status : string prop;
  storage_encrypted : bool prop;
}

val aws_neptune_global_cluster :
  ?deletion_protection:bool prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?source_db_cluster_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?timeouts:aws_neptune_global_cluster__timeouts ->
  global_cluster_identifier:string prop ->
  string ->
  t

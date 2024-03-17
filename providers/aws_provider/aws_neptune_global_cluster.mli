(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_global_cluster__timeouts

type aws_neptune_global_cluster__global_cluster_members = {
  db_cluster_arn : string;  (** db_cluster_arn *)
  is_writer : bool;  (** is_writer *)
}

type aws_neptune_global_cluster

val aws_neptune_global_cluster :
  ?deletion_protection:bool ->
  ?engine:string ->
  ?engine_version:string ->
  ?id:string ->
  ?source_db_cluster_identifier:string ->
  ?storage_encrypted:bool ->
  ?timeouts:aws_neptune_global_cluster__timeouts ->
  global_cluster_identifier:string ->
  string ->
  unit

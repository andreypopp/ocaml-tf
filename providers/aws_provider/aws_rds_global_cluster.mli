(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_global_cluster__timeouts

type aws_rds_global_cluster__global_cluster_members = {
  db_cluster_arn : string;  (** db_cluster_arn *)
  is_writer : bool;  (** is_writer *)
}

type aws_rds_global_cluster

val aws_rds_global_cluster :
  ?database_name:string ->
  ?deletion_protection:bool ->
  ?engine:string ->
  ?engine_version:string ->
  ?force_destroy:bool ->
  ?id:string ->
  ?source_db_cluster_identifier:string ->
  ?storage_encrypted:bool ->
  ?timeouts:aws_rds_global_cluster__timeouts ->
  global_cluster_identifier:string ->
  string ->
  unit

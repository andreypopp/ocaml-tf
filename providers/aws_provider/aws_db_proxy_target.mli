(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_target

val aws_db_proxy_target :
  ?db_cluster_identifier:string ->
  ?db_instance_identifier:string ->
  db_proxy_name:string ->
  target_group_name:string ->
  string ->
  unit

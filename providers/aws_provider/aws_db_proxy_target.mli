(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_target

val aws_db_proxy_target :
  ?db_cluster_identifier:string prop ->
  ?db_instance_identifier:string prop ->
  ?id:string prop ->
  db_proxy_name:string prop ->
  target_group_name:string prop ->
  string ->
  unit

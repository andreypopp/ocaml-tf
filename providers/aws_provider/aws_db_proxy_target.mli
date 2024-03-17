(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_target

type t = private {
  db_cluster_identifier : string prop;
  db_instance_identifier : string prop;
  db_proxy_name : string prop;
  endpoint : string prop;
  id : string prop;
  port : float prop;
  rds_resource_id : string prop;
  target_arn : string prop;
  target_group_name : string prop;
  tracked_cluster_id : string prop;
  type_ : string prop;
}

val aws_db_proxy_target :
  ?db_cluster_identifier:string prop ->
  ?db_instance_identifier:string prop ->
  ?id:string prop ->
  db_proxy_name:string prop ->
  target_group_name:string prop ->
  string ->
  t

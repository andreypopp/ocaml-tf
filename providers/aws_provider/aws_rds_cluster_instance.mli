(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_instance__timeouts
type aws_rds_cluster_instance

val aws_rds_cluster_instance :
  ?auto_minor_version_upgrade:bool ->
  ?copy_tags_to_snapshot:bool ->
  ?custom_iam_instance_profile:string ->
  ?monitoring_interval:float ->
  ?promotion_tier:float ->
  ?tags:(string * string) list ->
  ?timeouts:aws_rds_cluster_instance__timeouts ->
  cluster_identifier:string ->
  engine:string ->
  instance_class:string ->
  string ->
  unit

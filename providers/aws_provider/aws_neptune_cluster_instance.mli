(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_instance__timeouts
type aws_neptune_cluster_instance

val aws_neptune_cluster_instance :
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:bool ->
  ?availability_zone:string ->
  ?engine:string ->
  ?engine_version:string ->
  ?id:string ->
  ?identifier:string ->
  ?identifier_prefix:string ->
  ?neptune_parameter_group_name:string ->
  ?neptune_subnet_group_name:string ->
  ?port:float ->
  ?preferred_backup_window:string ->
  ?preferred_maintenance_window:string ->
  ?promotion_tier:float ->
  ?publicly_accessible:bool ->
  ?skip_final_snapshot:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_neptune_cluster_instance__timeouts ->
  cluster_identifier:string ->
  instance_class:string ->
  string ->
  unit

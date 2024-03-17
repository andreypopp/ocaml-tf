(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_instance__timeouts
type aws_neptune_cluster_instance

val aws_neptune_cluster_instance :
  ?auto_minor_version_upgrade:bool ->
  ?engine:string ->
  ?neptune_parameter_group_name:string ->
  ?port:float ->
  ?promotion_tier:float ->
  ?publicly_accessible:bool ->
  ?skip_final_snapshot:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_neptune_cluster_instance__timeouts ->
  cluster_identifier:string ->
  instance_class:string ->
  string ->
  unit

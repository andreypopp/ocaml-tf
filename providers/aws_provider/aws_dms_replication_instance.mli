(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_instance__timeouts
type aws_dms_replication_instance

val aws_dms_replication_instance :
  ?allocated_storage:float ->
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:bool ->
  ?availability_zone:string ->
  ?engine_version:string ->
  ?id:string ->
  ?kms_key_arn:string ->
  ?multi_az:bool ->
  ?network_type:string ->
  ?preferred_maintenance_window:string ->
  ?publicly_accessible:bool ->
  ?replication_subnet_group_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_dms_replication_instance__timeouts ->
  replication_instance_class:string ->
  replication_instance_id:string ->
  string ->
  unit

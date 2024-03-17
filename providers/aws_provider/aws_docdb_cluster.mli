(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster__timeouts
type aws_docdb_cluster

val aws_docdb_cluster :
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?availability_zones:string list ->
  ?backup_retention_period:float ->
  ?cluster_identifier:string ->
  ?cluster_identifier_prefix:string ->
  ?cluster_members:string list ->
  ?db_cluster_parameter_group_name:string ->
  ?db_subnet_group_name:string ->
  ?deletion_protection:bool ->
  ?enabled_cloudwatch_logs_exports:string list ->
  ?engine:string ->
  ?engine_version:string ->
  ?final_snapshot_identifier:string ->
  ?global_cluster_identifier:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?master_password:string ->
  ?master_username:string ->
  ?port:float ->
  ?preferred_backup_window:string ->
  ?preferred_maintenance_window:string ->
  ?skip_final_snapshot:bool ->
  ?snapshot_identifier:string ->
  ?storage_encrypted:bool ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_docdb_cluster__timeouts ->
  string ->
  unit

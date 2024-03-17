(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster__timeouts
type aws_docdb_cluster

val aws_docdb_cluster :
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?backup_retention_period:float ->
  ?deletion_protection:bool ->
  ?enabled_cloudwatch_logs_exports:string list ->
  ?engine:string ->
  ?final_snapshot_identifier:string ->
  ?global_cluster_identifier:string ->
  ?master_password:string ->
  ?port:float ->
  ?skip_final_snapshot:bool ->
  ?snapshot_identifier:string ->
  ?storage_encrypted:bool ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_docdb_cluster__timeouts ->
  string ->
  unit

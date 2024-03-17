(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_instance_automated_backups_replication__timeouts
type aws_db_instance_automated_backups_replication

val aws_db_instance_automated_backups_replication :
  ?pre_signed_url:string ->
  ?retention_period:float ->
  ?timeouts:aws_db_instance_automated_backups_replication__timeouts ->
  source_db_instance_arn:string ->
  string ->
  unit

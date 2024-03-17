(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_instance_automated_backups_replication__timeouts
type aws_db_instance_automated_backups_replication

type t = private {
  id : string prop;
  kms_key_id : string prop;
  pre_signed_url : string prop;
  retention_period : float prop;
  source_db_instance_arn : string prop;
}

val aws_db_instance_automated_backups_replication :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?pre_signed_url:string prop ->
  ?retention_period:float prop ->
  ?timeouts:aws_db_instance_automated_backups_replication__timeouts ->
  source_db_instance_arn:string prop ->
  string ->
  t

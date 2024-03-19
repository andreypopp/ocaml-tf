(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_db_instance_automated_backups_replication

val aws_db_instance_automated_backups_replication :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?pre_signed_url:string prop ->
  ?retention_period:float prop ->
  ?timeouts:timeouts ->
  source_db_instance_arn:string prop ->
  unit ->
  aws_db_instance_automated_backups_replication

val yojson_of_aws_db_instance_automated_backups_replication :
  aws_db_instance_automated_backups_replication -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  kms_key_id : string prop;
  pre_signed_url : string prop;
  retention_period : float prop;
  source_db_instance_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?pre_signed_url:string prop ->
  ?retention_period:float prop ->
  ?timeouts:timeouts ->
  source_db_instance_arn:string prop ->
  string ->
  t

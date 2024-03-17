(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_snapshot__timeouts
type aws_db_snapshot

type t = private {
  allocated_storage : float prop;
  availability_zone : string prop;
  db_instance_identifier : string prop;
  db_snapshot_arn : string prop;
  db_snapshot_identifier : string prop;
  encrypted : bool prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  option_group_name : string prop;
  port : float prop;
  shared_accounts : string list prop;
  snapshot_type : string prop;
  source_db_snapshot_identifier : string prop;
  source_region : string prop;
  status : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_db_snapshot :
  ?id:string prop ->
  ?shared_accounts:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_db_snapshot__timeouts ->
  db_instance_identifier:string prop ->
  db_snapshot_identifier:string prop ->
  string ->
  t

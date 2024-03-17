(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_snapshot_copy__timeouts
type aws_db_snapshot_copy

type t = private {
  allocated_storage : float prop;
  availability_zone : string prop;
  copy_tags : bool prop;
  db_snapshot_arn : string prop;
  destination_region : string prop;
  encrypted : bool prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  option_group_name : string prop;
  port : float prop;
  presigned_url : string prop;
  snapshot_type : string prop;
  source_db_snapshot_identifier : string prop;
  source_region : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_custom_availability_zone : string prop;
  target_db_snapshot_identifier : string prop;
  vpc_id : string prop;
}

val aws_db_snapshot_copy :
  ?copy_tags:bool prop ->
  ?destination_region:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?option_group_name:string prop ->
  ?presigned_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_custom_availability_zone:string prop ->
  ?timeouts:aws_db_snapshot_copy__timeouts ->
  source_db_snapshot_identifier:string prop ->
  target_db_snapshot_identifier:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_db_snapshot_copy

val aws_db_snapshot_copy :
  ?copy_tags:bool prop ->
  ?destination_region:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?option_group_name:string prop ->
  ?presigned_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_custom_availability_zone:string prop ->
  ?timeouts:timeouts ->
  source_db_snapshot_identifier:string prop ->
  target_db_snapshot_identifier:string prop ->
  unit ->
  aws_db_snapshot_copy

val yojson_of_aws_db_snapshot_copy : aws_db_snapshot_copy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_custom_availability_zone : string prop;
  target_db_snapshot_identifier : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?copy_tags:bool prop ->
  ?destination_region:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?option_group_name:string prop ->
  ?presigned_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_custom_availability_zone:string prop ->
  ?timeouts:timeouts ->
  source_db_snapshot_identifier:string prop ->
  target_db_snapshot_identifier:string prop ->
  string ->
  t

val make :
  ?copy_tags:bool prop ->
  ?destination_region:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?option_group_name:string prop ->
  ?presigned_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_custom_availability_zone:string prop ->
  ?timeouts:timeouts ->
  source_db_snapshot_identifier:string prop ->
  target_db_snapshot_identifier:string prop ->
  string ->
  t Tf_core.resource

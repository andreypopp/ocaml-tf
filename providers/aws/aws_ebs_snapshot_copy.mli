(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ebs_snapshot_copy

val aws_ebs_snapshot_copy :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?temporary_restore_days:float prop ->
  ?timeouts:timeouts ->
  source_region:string prop ->
  source_snapshot_id:string prop ->
  unit ->
  aws_ebs_snapshot_copy

val yojson_of_aws_ebs_snapshot_copy : aws_ebs_snapshot_copy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  data_encryption_key_id : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  outpost_arn : string prop;
  owner_alias : string prop;
  owner_id : string prop;
  permanent_restore : bool prop;
  source_region : string prop;
  source_snapshot_id : string prop;
  storage_tier : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?temporary_restore_days:float prop ->
  ?timeouts:timeouts ->
  source_region:string prop ->
  source_snapshot_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?temporary_restore_days:float prop ->
  ?timeouts:timeouts ->
  source_region:string prop ->
  source_snapshot_id:string prop ->
  string ->
  t Tf_core.resource

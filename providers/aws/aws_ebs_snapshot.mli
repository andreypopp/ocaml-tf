(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ebs_snapshot

val aws_ebs_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?outpost_arn:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?temporary_restore_days:float prop ->
  ?timeouts:timeouts ->
  volume_id:string prop ->
  unit ->
  aws_ebs_snapshot

val yojson_of_aws_ebs_snapshot : aws_ebs_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  storage_tier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?outpost_arn:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?temporary_restore_days:float prop ->
  ?timeouts:timeouts ->
  volume_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?outpost_arn:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?temporary_restore_days:float prop ->
  ?timeouts:timeouts ->
  volume_id:string prop ->
  string ->
  t Tf_core.resource

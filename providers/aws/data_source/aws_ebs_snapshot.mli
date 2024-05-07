(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ebs_snapshot

val aws_ebs_snapshot :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?owners:string prop list ->
  ?restorable_by_user_ids:string prop list ->
  ?snapshot_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ebs_snapshot

val yojson_of_aws_ebs_snapshot : aws_ebs_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  data_encryption_key_id : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  most_recent : bool prop;
  outpost_arn : string prop;
  owner_alias : string prop;
  owner_id : string prop;
  owners : string list prop;
  restorable_by_user_ids : string list prop;
  snapshot_id : string prop;
  snapshot_ids : string list prop;
  state : string prop;
  storage_tier : string prop;
  tags : (string * string) list prop;
  volume_id : string prop;
  volume_size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?owners:string prop list ->
  ?restorable_by_user_ids:string prop list ->
  ?snapshot_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?owners:string prop list ->
  ?restorable_by_user_ids:string prop list ->
  ?snapshot_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource

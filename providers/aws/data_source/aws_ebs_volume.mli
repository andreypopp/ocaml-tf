(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ebs_volume

val aws_ebs_volume :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ebs_volume

val yojson_of_aws_ebs_volume : aws_ebs_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  encrypted : bool prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  most_recent : bool prop;
  multi_attach_enabled : bool prop;
  outpost_arn : string prop;
  size : float prop;
  snapshot_id : string prop;
  tags : string Tf_core.assoc prop;
  throughput : float prop;
  volume_id : string prop;
  volume_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource

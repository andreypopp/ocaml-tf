(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ebs_volume

val aws_ebs_volume :
  ?encrypted:bool prop ->
  ?final_snapshot:bool prop ->
  ?id:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?multi_attach_enabled:bool prop ->
  ?outpost_arn:string prop ->
  ?size:float prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?throughput:float prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  unit ->
  aws_ebs_volume

val yojson_of_aws_ebs_volume : aws_ebs_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  encrypted : bool prop;
  final_snapshot : bool prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  multi_attach_enabled : bool prop;
  outpost_arn : string prop;
  size : float prop;
  snapshot_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  throughput : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?encrypted:bool prop ->
  ?final_snapshot:bool prop ->
  ?id:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?multi_attach_enabled:bool prop ->
  ?outpost_arn:string prop ->
  ?size:float prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?throughput:float prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  string ->
  t

val make :
  ?encrypted:bool prop ->
  ?final_snapshot:bool prop ->
  ?id:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?multi_attach_enabled:bool prop ->
  ?outpost_arn:string prop ->
  ?size:float prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?throughput:float prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  string ->
  t Tf_core.resource

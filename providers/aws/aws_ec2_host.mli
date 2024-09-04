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

type aws_ec2_host

val aws_ec2_host :
  ?asset_id:string prop ->
  ?auto_placement:string prop ->
  ?host_recovery:string prop ->
  ?id:string prop ->
  ?instance_family:string prop ->
  ?instance_type:string prop ->
  ?outpost_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  unit ->
  aws_ec2_host

val yojson_of_aws_ec2_host : aws_ec2_host -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  asset_id : string prop;
  auto_placement : string prop;
  availability_zone : string prop;
  host_recovery : string prop;
  id : string prop;
  instance_family : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?asset_id:string prop ->
  ?auto_placement:string prop ->
  ?host_recovery:string prop ->
  ?id:string prop ->
  ?instance_family:string prop ->
  ?instance_type:string prop ->
  ?outpost_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  string ->
  t

val make :
  ?asset_id:string prop ->
  ?auto_placement:string prop ->
  ?host_recovery:string prop ->
  ?id:string prop ->
  ?instance_family:string prop ->
  ?instance_type:string prop ->
  ?outpost_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  string ->
  t Tf_core.resource

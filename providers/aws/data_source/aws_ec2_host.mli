(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_host

val aws_ec2_host :
  ?host_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
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
  cores : float prop;
  host_id : string prop;
  host_recovery : string prop;
  id : string prop;
  instance_family : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  sockets : float prop;
  tags : string Tf_core.assoc prop;
  total_vcpus : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?host_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?host_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource

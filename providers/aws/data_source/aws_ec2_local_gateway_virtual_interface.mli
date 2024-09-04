(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_local_gateway_virtual_interface

val aws_ec2_local_gateway_virtual_interface :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_local_gateway_virtual_interface

val yojson_of_aws_ec2_local_gateway_virtual_interface :
  aws_ec2_local_gateway_virtual_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  local_address : string prop;
  local_bgp_asn : float prop;
  local_gateway_id : string prop;
  local_gateway_virtual_interface_ids : string list prop;
  peer_address : string prop;
  peer_bgp_asn : float prop;
  tags : string Tf_core.assoc prop;
  vlan : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource

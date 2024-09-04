(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dx_public_virtual_interface

val aws_dx_public_virtual_interface :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  connection_id:string prop ->
  name:string prop ->
  route_filter_prefixes:string prop list ->
  vlan:float prop ->
  unit ->
  aws_dx_public_virtual_interface

val yojson_of_aws_dx_public_virtual_interface :
  aws_dx_public_virtual_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_family : string prop;
  amazon_address : string prop;
  amazon_side_asn : string prop;
  arn : string prop;
  aws_device : string prop;
  bgp_asn : float prop;
  bgp_auth_key : string prop;
  connection_id : string prop;
  customer_address : string prop;
  id : string prop;
  name : string prop;
  route_filter_prefixes : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vlan : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  connection_id:string prop ->
  name:string prop ->
  route_filter_prefixes:string prop list ->
  vlan:float prop ->
  string ->
  t

val make :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  connection_id:string prop ->
  name:string prop ->
  route_filter_prefixes:string prop list ->
  vlan:float prop ->
  string ->
  t Tf_core.resource

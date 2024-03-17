(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_transit_virtual_interface__timeouts
type aws_dx_hosted_transit_virtual_interface

type t = private {
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
  jumbo_frame_capable : bool prop;
  mtu : float prop;
  name : string prop;
  owner_account_id : string prop;
  vlan : float prop;
}

val aws_dx_hosted_transit_virtual_interface :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?mtu:float prop ->
  ?timeouts:aws_dx_hosted_transit_virtual_interface__timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  connection_id:string prop ->
  name:string prop ->
  owner_account_id:string prop ->
  vlan:float prop ->
  string ->
  t

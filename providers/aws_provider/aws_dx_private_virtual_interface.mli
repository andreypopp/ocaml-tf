(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_private_virtual_interface__timeouts
type aws_dx_private_virtual_interface

val aws_dx_private_virtual_interface :
  ?amazon_address:string ->
  ?bgp_auth_key:string ->
  ?customer_address:string ->
  ?dx_gateway_id:string ->
  ?id:string ->
  ?mtu:float ->
  ?sitelink_enabled:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpn_gateway_id:string ->
  ?timeouts:aws_dx_private_virtual_interface__timeouts ->
  address_family:string ->
  bgp_asn:float ->
  connection_id:string ->
  name:string ->
  vlan:float ->
  string ->
  unit

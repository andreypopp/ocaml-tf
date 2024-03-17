(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_private_virtual_interface__timeouts
type aws_dx_private_virtual_interface

val aws_dx_private_virtual_interface :
  ?dx_gateway_id:string ->
  ?mtu:float ->
  ?sitelink_enabled:bool ->
  ?tags:(string * string) list ->
  ?vpn_gateway_id:string ->
  ?timeouts:aws_dx_private_virtual_interface__timeouts ->
  address_family:string ->
  bgp_asn:float ->
  connection_id:string ->
  name:string ->
  vlan:float ->
  string ->
  unit

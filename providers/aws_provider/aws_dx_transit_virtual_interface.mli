(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_transit_virtual_interface__timeouts
type aws_dx_transit_virtual_interface

val aws_dx_transit_virtual_interface :
  ?amazon_address:string ->
  ?bgp_auth_key:string ->
  ?customer_address:string ->
  ?id:string ->
  ?mtu:float ->
  ?sitelink_enabled:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_dx_transit_virtual_interface__timeouts ->
  address_family:string ->
  bgp_asn:float ->
  connection_id:string ->
  dx_gateway_id:string ->
  name:string ->
  vlan:float ->
  string ->
  unit

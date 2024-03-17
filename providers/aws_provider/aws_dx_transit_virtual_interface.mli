(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_transit_virtual_interface__timeouts
type aws_dx_transit_virtual_interface

val aws_dx_transit_virtual_interface :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?mtu:float prop ->
  ?sitelink_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_dx_transit_virtual_interface__timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  connection_id:string prop ->
  dx_gateway_id:string prop ->
  name:string prop ->
  vlan:float prop ->
  string ->
  unit

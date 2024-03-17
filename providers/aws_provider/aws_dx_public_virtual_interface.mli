(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_public_virtual_interface__timeouts
type aws_dx_public_virtual_interface

val aws_dx_public_virtual_interface :
  ?tags:(string * string) list ->
  ?timeouts:aws_dx_public_virtual_interface__timeouts ->
  address_family:string ->
  bgp_asn:float ->
  connection_id:string ->
  name:string ->
  route_filter_prefixes:string list ->
  vlan:float ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_public_virtual_interface__timeouts
type aws_dx_hosted_public_virtual_interface

val aws_dx_hosted_public_virtual_interface :
  ?amazon_address:string ->
  ?bgp_auth_key:string ->
  ?customer_address:string ->
  ?id:string ->
  ?timeouts:aws_dx_hosted_public_virtual_interface__timeouts ->
  address_family:string ->
  bgp_asn:float ->
  connection_id:string ->
  name:string ->
  owner_account_id:string ->
  route_filter_prefixes:string list ->
  vlan:float ->
  string ->
  unit

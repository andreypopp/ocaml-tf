(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_private_virtual_interface__timeouts
type aws_dx_hosted_private_virtual_interface

val aws_dx_hosted_private_virtual_interface :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?mtu:float prop ->
  ?timeouts:aws_dx_hosted_private_virtual_interface__timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  connection_id:string prop ->
  name:string prop ->
  owner_account_id:string prop ->
  vlan:float prop ->
  string ->
  unit

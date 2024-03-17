(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_bgp_peer__timeouts
type aws_dx_bgp_peer

val aws_dx_bgp_peer :
  ?amazon_address:string ->
  ?bgp_auth_key:string ->
  ?customer_address:string ->
  ?id:string ->
  ?timeouts:aws_dx_bgp_peer__timeouts ->
  address_family:string ->
  bgp_asn:float ->
  virtual_interface_id:string ->
  string ->
  unit

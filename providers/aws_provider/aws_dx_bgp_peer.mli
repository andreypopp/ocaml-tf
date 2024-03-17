(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_bgp_peer__timeouts
type aws_dx_bgp_peer

val aws_dx_bgp_peer :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?timeouts:aws_dx_bgp_peer__timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  virtual_interface_id:string prop ->
  string ->
  unit

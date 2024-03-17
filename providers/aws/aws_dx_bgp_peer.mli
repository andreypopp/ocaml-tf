(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_bgp_peer__timeouts
type aws_dx_bgp_peer

type t = private {
  address_family : string prop;
  amazon_address : string prop;
  aws_device : string prop;
  bgp_asn : float prop;
  bgp_auth_key : string prop;
  bgp_peer_id : string prop;
  bgp_status : string prop;
  customer_address : string prop;
  id : string prop;
  virtual_interface_id : string prop;
}

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
  t

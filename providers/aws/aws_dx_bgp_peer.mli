(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dx_bgp_peer

val aws_dx_bgp_peer :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  virtual_interface_id:string prop ->
  unit ->
  aws_dx_bgp_peer

val yojson_of_aws_dx_bgp_peer : aws_dx_bgp_peer -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  virtual_interface_id:string prop ->
  string ->
  t

val make :
  ?amazon_address:string prop ->
  ?bgp_auth_key:string prop ->
  ?customer_address:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  bgp_asn:float prop ->
  virtual_interface_id:string prop ->
  string ->
  t Tf_core.resource

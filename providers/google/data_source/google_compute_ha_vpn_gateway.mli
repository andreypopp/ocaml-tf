(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vpn_interfaces = {
  id : float prop;  (** id *)
  interconnect_attachment : string prop;
      (** interconnect_attachment *)
  ip_address : string prop;  (** ip_address *)
}

type google_compute_ha_vpn_gateway

val google_compute_ha_vpn_gateway :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_compute_ha_vpn_gateway

val yojson_of_google_compute_ha_vpn_gateway :
  google_compute_ha_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  stack_type : string prop;
  vpn_interfaces : vpn_interfaces list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

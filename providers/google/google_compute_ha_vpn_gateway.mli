(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type vpn_interfaces

val vpn_interfaces :
  ?id:float prop ->
  ?interconnect_attachment:string prop ->
  unit ->
  vpn_interfaces

type google_compute_ha_vpn_gateway

val google_compute_ha_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?stack_type:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  vpn_interfaces:vpn_interfaces list ->
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
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?stack_type:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  vpn_interfaces:vpn_interfaces list ->
  string ->
  t

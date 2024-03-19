(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_network_peering

val google_compute_network_peering :
  ?export_custom_routes:bool prop ->
  ?export_subnet_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_subnet_routes_with_public_ip:bool prop ->
  ?stack_type:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  peer_network:string prop ->
  unit ->
  google_compute_network_peering

val yojson_of_google_compute_network_peering :
  google_compute_network_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  export_custom_routes : bool prop;
  export_subnet_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_subnet_routes_with_public_ip : bool prop;
  name : string prop;
  network : string prop;
  peer_network : string prop;
  stack_type : string prop;
  state : string prop;
  state_details : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?export_custom_routes:bool prop ->
  ?export_subnet_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_subnet_routes_with_public_ip:bool prop ->
  ?stack_type:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  peer_network:string prop ->
  string ->
  t

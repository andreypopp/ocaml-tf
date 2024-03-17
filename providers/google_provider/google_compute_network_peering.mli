(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_peering__timeouts
type google_compute_network_peering

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

val google_compute_network_peering :
  ?export_custom_routes:bool prop ->
  ?export_subnet_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_subnet_routes_with_public_ip:bool prop ->
  ?stack_type:string prop ->
  ?timeouts:google_compute_network_peering__timeouts ->
  name:string prop ->
  network:string prop ->
  peer_network:string prop ->
  string ->
  t

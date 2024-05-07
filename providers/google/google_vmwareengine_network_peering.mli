(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_network_peering

val google_vmwareengine_network_peering :
  ?description:string prop ->
  ?export_custom_routes:bool prop ->
  ?export_custom_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_custom_routes_with_public_ip:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  peer_network:string prop ->
  peer_network_type:string prop ->
  vmware_engine_network:string prop ->
  unit ->
  google_vmwareengine_network_peering

val yojson_of_google_vmwareengine_network_peering :
  google_vmwareengine_network_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  export_custom_routes : bool prop;
  export_custom_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_custom_routes_with_public_ip : bool prop;
  name : string prop;
  peer_network : string prop;
  peer_network_type : string prop;
  project : string prop;
  state : string prop;
  state_details : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?export_custom_routes:bool prop ->
  ?export_custom_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_custom_routes_with_public_ip:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  peer_network:string prop ->
  peer_network_type:string prop ->
  vmware_engine_network:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?export_custom_routes:bool prop ->
  ?export_custom_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_custom_routes_with_public_ip:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  peer_network:string prop ->
  peer_network_type:string prop ->
  vmware_engine_network:string prop ->
  string ->
  t Tf_core.resource

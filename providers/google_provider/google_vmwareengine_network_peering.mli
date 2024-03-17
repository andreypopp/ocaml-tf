(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network_peering__timeouts
type google_vmwareengine_network_peering

val google_vmwareengine_network_peering :
  ?description:string ->
  ?export_custom_routes:bool ->
  ?export_custom_routes_with_public_ip:bool ->
  ?id:string ->
  ?import_custom_routes:bool ->
  ?import_custom_routes_with_public_ip:bool ->
  ?project:string ->
  ?timeouts:google_vmwareengine_network_peering__timeouts ->
  name:string ->
  peer_network:string ->
  peer_network_type:string ->
  vmware_engine_network:string ->
  string ->
  unit

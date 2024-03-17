(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network_peering__timeouts
type google_vmwareengine_network_peering

val google_vmwareengine_network_peering :
  ?description:string prop ->
  ?export_custom_routes:bool prop ->
  ?export_custom_routes_with_public_ip:bool prop ->
  ?id:string prop ->
  ?import_custom_routes:bool prop ->
  ?import_custom_routes_with_public_ip:bool prop ->
  ?project:string prop ->
  ?timeouts:google_vmwareengine_network_peering__timeouts ->
  name:string prop ->
  peer_network:string prop ->
  peer_network_type:string prop ->
  vmware_engine_network:string prop ->
  string ->
  unit

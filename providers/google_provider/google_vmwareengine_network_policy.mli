(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network_policy__external_ip
type google_vmwareengine_network_policy__internet_access
type google_vmwareengine_network_policy__timeouts
type google_vmwareengine_network_policy

val google_vmwareengine_network_policy :
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_vmwareengine_network_policy__timeouts ->
  edge_services_cidr:string ->
  location:string ->
  name:string ->
  vmware_engine_network:string ->
  external_ip:google_vmwareengine_network_policy__external_ip list ->
  internet_access:
    google_vmwareengine_network_policy__internet_access list ->
  string ->
  unit

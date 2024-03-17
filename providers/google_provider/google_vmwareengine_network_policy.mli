(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network_policy__external_ip
type google_vmwareengine_network_policy__internet_access
type google_vmwareengine_network_policy__timeouts
type google_vmwareengine_network_policy

val google_vmwareengine_network_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_vmwareengine_network_policy__timeouts ->
  edge_services_cidr:string prop ->
  location:string prop ->
  name:string prop ->
  vmware_engine_network:string prop ->
  external_ip:google_vmwareengine_network_policy__external_ip list ->
  internet_access:
    google_vmwareengine_network_policy__internet_access list ->
  string ->
  unit

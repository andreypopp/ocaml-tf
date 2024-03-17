(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network_policy__external_ip
type google_vmwareengine_network_policy__internet_access
type google_vmwareengine_network_policy__timeouts
type google_vmwareengine_network_policy

type t = private {
  create_time : string prop;
  description : string prop;
  edge_services_cidr : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

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
  t

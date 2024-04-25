(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_ip

val external_ip : ?enabled:bool prop -> unit -> external_ip

type internet_access

val internet_access : ?enabled:bool prop -> unit -> internet_access

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_network_policy

val google_vmwareengine_network_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?external_ip:external_ip list ->
  ?internet_access:internet_access list ->
  ?timeouts:timeouts ->
  edge_services_cidr:string prop ->
  location:string prop ->
  name:string prop ->
  vmware_engine_network:string prop ->
  unit ->
  google_vmwareengine_network_policy

val yojson_of_google_vmwareengine_network_policy :
  google_vmwareengine_network_policy -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?external_ip:external_ip list ->
  ?internet_access:internet_access list ->
  ?timeouts:timeouts ->
  edge_services_cidr:string prop ->
  location:string prop ->
  name:string prop ->
  vmware_engine_network:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?external_ip:external_ip list ->
  ?internet_access:internet_access list ->
  ?timeouts:timeouts ->
  edge_services_cidr:string prop ->
  location:string prop ->
  name:string prop ->
  vmware_engine_network:string prop ->
  string ->
  t Tf_core.resource

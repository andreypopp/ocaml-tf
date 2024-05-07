(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_ip = {
  enabled : bool prop;  (** enabled *)
  state : string prop;  (** state *)
}

type internet_access = {
  enabled : bool prop;  (** enabled *)
  state : string prop;  (** state *)
}

type google_vmwareengine_network_policy

val google_vmwareengine_network_policy :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_vmwareengine_network_policy

val yojson_of_google_vmwareengine_network_policy :
  google_vmwareengine_network_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  edge_services_cidr : string prop;
  external_ip : external_ip list prop;
  id : string prop;
  internet_access : internet_access list prop;
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
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

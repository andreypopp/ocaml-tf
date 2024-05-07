(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_ip_ranges = {
  external_address : string prop;  (** external_address *)
  ip_address_range : string prop;  (** ip_address_range *)
}

type source_ip_ranges = {
  ip_address : string prop;  (** ip_address *)
  ip_address_range : string prop;  (** ip_address_range *)
}

type google_vmwareengine_external_access_rule

val google_vmwareengine_external_access_rule :
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_vmwareengine_external_access_rule

val yojson_of_google_vmwareengine_external_access_rule :
  google_vmwareengine_external_access_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  create_time : string prop;
  description : string prop;
  destination_ip_ranges : destination_ip_ranges list prop;
  destination_ports : string list prop;
  id : string prop;
  ip_protocol : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  source_ip_ranges : source_ip_ranges list prop;
  source_ports : string list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type node_type_configs = {
  custom_core_count : float prop;  (** custom_core_count *)
  node_count : float prop;  (** node_count *)
  node_type_id : string prop;  (** node_type_id *)
}

type google_vmwareengine_cluster

val google_vmwareengine_cluster :
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_vmwareengine_cluster

val yojson_of_google_vmwareengine_cluster :
  google_vmwareengine_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  management : bool prop;
  name : string prop;
  node_type_configs : node_type_configs list prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
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

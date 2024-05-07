(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type node_type_configs

val node_type_configs :
  ?custom_core_count:float prop ->
  node_count:float prop ->
  node_type_id:string prop ->
  unit ->
  node_type_configs

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_cluster

val google_vmwareengine_cluster :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  node_type_configs:node_type_configs list ->
  unit ->
  google_vmwareengine_cluster

val yojson_of_google_vmwareengine_cluster :
  google_vmwareengine_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  management : bool prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  node_type_configs:node_type_configs list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  node_type_configs:node_type_configs list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_arc_kubernetes_cluster

val azurerm_arc_kubernetes_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  agent_public_key_certificate:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_arc_kubernetes_cluster

val yojson_of_azurerm_arc_kubernetes_cluster :
  azurerm_arc_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  agent_public_key_certificate : string prop;
  agent_version : string prop;
  distribution : string prop;
  id : string prop;
  infrastructure : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  offering : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  total_core_count : float prop;
  total_node_count : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  agent_public_key_certificate:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  agent_public_key_certificate:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource

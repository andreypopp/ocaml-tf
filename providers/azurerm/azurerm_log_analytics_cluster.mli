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

type azurerm_log_analytics_cluster

val azurerm_log_analytics_cluster :
  ?id:string prop ->
  ?size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_log_analytics_cluster

val yojson_of_azurerm_log_analytics_cluster :
  azurerm_log_analytics_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  size_gb : float prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource

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

type azurerm_arc_kubernetes_cluster_extension

val azurerm_arc_kubernetes_cluster_extension :
  ?configuration_protected_settings:string prop Tf_core.assoc ->
  ?configuration_settings:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_arc_kubernetes_cluster_extension

val yojson_of_azurerm_arc_kubernetes_cluster_extension :
  azurerm_arc_kubernetes_cluster_extension -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_id : string prop;
  configuration_protected_settings : string Tf_core.assoc prop;
  configuration_settings : string Tf_core.assoc prop;
  current_version : string prop;
  extension_type : string prop;
  id : string prop;
  name : string prop;
  release_namespace : string prop;
  release_train : string prop;
  target_namespace : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?configuration_protected_settings:string prop Tf_core.assoc ->
  ?configuration_settings:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?configuration_protected_settings:string prop Tf_core.assoc ->
  ?configuration_settings:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aks_assigned_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type plan

val plan :
  ?promotion_code:string prop ->
  ?version:string prop ->
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kubernetes_cluster_extension

val azurerm_kubernetes_cluster_extension :
  ?configuration_protected_settings:string prop Tf_core.assoc ->
  ?configuration_settings:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?plan:plan list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  unit ->
  azurerm_kubernetes_cluster_extension

val yojson_of_azurerm_kubernetes_cluster_extension :
  azurerm_kubernetes_cluster_extension -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aks_assigned_identity : aks_assigned_identity list prop;
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
  ?plan:plan list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
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
  ?plan:plan list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

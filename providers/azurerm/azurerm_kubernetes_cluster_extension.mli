(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aks_assigned_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

[@@@deriving.end]

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
  ?configuration_protected_settings:(string * string prop) list ->
  ?configuration_settings:(string * string prop) list ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  plan:plan list ->
  unit ->
  azurerm_kubernetes_cluster_extension

val yojson_of_azurerm_kubernetes_cluster_extension :
  azurerm_kubernetes_cluster_extension -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aks_assigned_identity : aks_assigned_identity list prop;
  cluster_id : string prop;
  configuration_protected_settings : (string * string) list prop;
  configuration_settings : (string * string) list prop;
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
  ?configuration_protected_settings:(string * string prop) list ->
  ?configuration_settings:(string * string prop) list ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  plan:plan list ->
  string ->
  t

val make :
  ?configuration_protected_settings:(string * string prop) list ->
  ?configuration_settings:(string * string prop) list ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  plan:plan list ->
  string ->
  t Tf_core.resource

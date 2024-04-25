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

type azurerm_stack_hci_cluster

val azurerm_stack_hci_cluster :
  ?automanage_configuration_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_stack_hci_cluster

val yojson_of_azurerm_stack_hci_cluster :
  azurerm_stack_hci_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automanage_configuration_id : string prop;
  client_id : string prop;
  cloud_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_provider_object_id : string prop;
  service_endpoint : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?automanage_configuration_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?automanage_configuration_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

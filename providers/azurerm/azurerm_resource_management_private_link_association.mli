(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_resource_management_private_link_association

val azurerm_resource_management_private_link_association :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  public_network_access_enabled:bool prop ->
  resource_management_private_link_id:string prop ->
  unit ->
  azurerm_resource_management_private_link_association

val yojson_of_azurerm_resource_management_private_link_association :
  azurerm_resource_management_private_link_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_management_private_link_id : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  public_network_access_enabled:bool prop ->
  resource_management_private_link_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  public_network_access_enabled:bool prop ->
  resource_management_private_link_id:string prop ->
  string ->
  t Tf_core.resource

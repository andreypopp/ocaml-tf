(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions

val permissions :
  ?actions:string prop list ->
  ?data_actions:string prop list ->
  ?not_actions:string prop list ->
  ?not_data_actions:string prop list ->
  unit ->
  permissions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_role_definition

val azurerm_role_definition :
  ?assignable_scopes:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope:string prop ->
  permissions:permissions list ->
  unit ->
  azurerm_role_definition

val yojson_of_azurerm_role_definition :
  azurerm_role_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  role_definition_id : string prop;
  role_definition_resource_id : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?assignable_scopes:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope:string prop ->
  permissions:permissions list ->
  string ->
  t

val make :
  ?assignable_scopes:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope:string prop ->
  permissions:permissions list ->
  string ->
  t Tf_core.resource

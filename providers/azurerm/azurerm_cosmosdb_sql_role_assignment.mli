(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_sql_role_assignment

val azurerm_cosmosdb_sql_role_assignment :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  principal_id:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  unit ->
  azurerm_cosmosdb_sql_role_assignment

val yojson_of_azurerm_cosmosdb_sql_role_assignment :
  azurerm_cosmosdb_sql_role_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  principal_id:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  principal_id:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource

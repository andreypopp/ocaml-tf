(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type permissions

val permissions :
  data_actions:string prop list -> unit -> permissions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_sql_role_definition

val azurerm_cosmosdb_sql_role_definition :
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  assignable_scopes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  permissions:permissions list ->
  unit ->
  azurerm_cosmosdb_sql_role_definition

val yojson_of_azurerm_cosmosdb_sql_role_definition :
  azurerm_cosmosdb_sql_role_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  assignable_scopes : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  assignable_scopes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  permissions:permissions list ->
  string ->
  t

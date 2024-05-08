(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions = {
  data_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** data_actions *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cosmosdb_sql_role_definition

val azurerm_cosmosdb_sql_role_definition :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  unit ->
  azurerm_cosmosdb_sql_role_definition

val yojson_of_azurerm_cosmosdb_sql_role_definition :
  azurerm_cosmosdb_sql_role_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  assignable_scopes : string list prop;
  id : string prop;
  name : string prop;
  permissions : permissions list prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  string ->
  t Tf_core.resource

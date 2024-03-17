(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_role_assignment__timeouts
type azurerm_cosmosdb_sql_role_assignment

type t = private {
  account_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

val azurerm_cosmosdb_sql_role_assignment :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_cosmosdb_sql_role_assignment__timeouts ->
  account_name:string prop ->
  principal_id:string prop ->
  resource_group_name:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t

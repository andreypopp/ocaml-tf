(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_notebook_workspace__timeouts
type azurerm_cosmosdb_notebook_workspace

type t = private {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_endpoint : string prop;
}

val azurerm_cosmosdb_notebook_workspace :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_notebook_workspace__timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

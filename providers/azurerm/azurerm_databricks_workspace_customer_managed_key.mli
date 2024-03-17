(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_workspace_customer_managed_key__timeouts
type azurerm_databricks_workspace_customer_managed_key

type t = private {
  id : string prop;
  key_vault_key_id : string prop;
  workspace_id : string prop;
}

val azurerm_databricks_workspace_customer_managed_key :
  ?id:string prop ->
  ?timeouts:
    azurerm_databricks_workspace_customer_managed_key__timeouts ->
  key_vault_key_id:string prop ->
  workspace_id:string prop ->
  string ->
  t

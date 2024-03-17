(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_workspace_customer_managed_key__timeouts
type azurerm_databricks_workspace_customer_managed_key

val azurerm_databricks_workspace_customer_managed_key :
  ?id:string prop ->
  ?timeouts:
    azurerm_databricks_workspace_customer_managed_key__timeouts ->
  key_vault_key_id:string prop ->
  workspace_id:string prop ->
  string ->
  unit

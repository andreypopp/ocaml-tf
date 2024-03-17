(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_workspace_root_dbfs_customer_managed_key__timeouts

type azurerm_databricks_workspace_root_dbfs_customer_managed_key

val azurerm_databricks_workspace_root_dbfs_customer_managed_key :
  ?id:string ->
  ?timeouts:
    azurerm_databricks_workspace_root_dbfs_customer_managed_key__timeouts ->
  key_vault_key_id:string ->
  workspace_id:string ->
  string ->
  unit

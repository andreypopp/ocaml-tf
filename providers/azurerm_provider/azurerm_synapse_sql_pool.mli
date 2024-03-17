(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool__restore
type azurerm_synapse_sql_pool__timeouts
type azurerm_synapse_sql_pool

val azurerm_synapse_sql_pool :
  ?create_mode:string ->
  ?data_encrypted:bool ->
  ?geo_backup_policy_enabled:bool ->
  ?recovery_database_id:string ->
  ?storage_account_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_synapse_sql_pool__timeouts ->
  name:string ->
  sku_name:string ->
  synapse_workspace_id:string ->
  restore:azurerm_synapse_sql_pool__restore list ->
  string ->
  unit

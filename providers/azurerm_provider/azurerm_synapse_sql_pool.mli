(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool__restore
type azurerm_synapse_sql_pool__timeouts
type azurerm_synapse_sql_pool

val azurerm_synapse_sql_pool :
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?data_encrypted:bool prop ->
  ?geo_backup_policy_enabled:bool prop ->
  ?id:string prop ->
  ?recovery_database_id:string prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_synapse_sql_pool__timeouts ->
  name:string prop ->
  sku_name:string prop ->
  synapse_workspace_id:string prop ->
  restore:azurerm_synapse_sql_pool__restore list ->
  string ->
  unit

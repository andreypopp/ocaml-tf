(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type restore

val restore :
  point_in_time:string prop ->
  source_database_id:string prop ->
  unit ->
  restore

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_sql_pool

val azurerm_synapse_sql_pool :
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?data_encrypted:bool prop ->
  ?geo_backup_policy_enabled:bool prop ->
  ?id:string prop ->
  ?recovery_database_id:string prop ->
  ?storage_account_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?restore:restore list ->
  ?timeouts:timeouts ->
  name:string prop ->
  sku_name:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_sql_pool

val yojson_of_azurerm_synapse_sql_pool :
  azurerm_synapse_sql_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collation : string prop;
  create_mode : string prop;
  data_encrypted : bool prop;
  geo_backup_policy_enabled : bool prop;
  id : string prop;
  name : string prop;
  recovery_database_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  synapse_workspace_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?data_encrypted:bool prop ->
  ?geo_backup_policy_enabled:bool prop ->
  ?id:string prop ->
  ?recovery_database_id:string prop ->
  ?storage_account_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?restore:restore list ->
  ?timeouts:timeouts ->
  name:string prop ->
  sku_name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t

val make :
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?data_encrypted:bool prop ->
  ?geo_backup_policy_enabled:bool prop ->
  ?id:string prop ->
  ?recovery_database_id:string prop ->
  ?storage_account_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?restore:restore list ->
  ?timeouts:timeouts ->
  name:string prop ->
  sku_name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t Tf_core.resource

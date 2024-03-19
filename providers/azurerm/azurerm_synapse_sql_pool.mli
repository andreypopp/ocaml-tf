(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  sku_name:string prop ->
  synapse_workspace_id:string prop ->
  restore:restore list ->
  unit ->
  azurerm_synapse_sql_pool

val yojson_of_azurerm_synapse_sql_pool :
  azurerm_synapse_sql_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  sku_name:string prop ->
  synapse_workspace_id:string prop ->
  restore:restore list ->
  string ->
  t

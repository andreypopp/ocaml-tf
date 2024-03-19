(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_log_analytics_data_export_rule

val azurerm_log_analytics_data_export_rule :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  table_names:string prop list ->
  workspace_resource_id:string prop ->
  unit ->
  azurerm_log_analytics_data_export_rule

val yojson_of_azurerm_log_analytics_data_export_rule :
  azurerm_log_analytics_data_export_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destination_resource_id : string prop;
  enabled : bool prop;
  export_rule_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  table_names : string list prop;
  workspace_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  table_names:string prop list ->
  workspace_resource_id:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_data_connector_azure_security_center

val azurerm_sentinel_data_connector_azure_security_center :
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_data_connector_azure_security_center

val yojson_of_azurerm_sentinel_data_connector_azure_security_center :
  azurerm_sentinel_data_connector_azure_security_center -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

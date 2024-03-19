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

type azurerm_sentinel_data_connector_aws_cloud_trail

val azurerm_sentinel_data_connector_aws_cloud_trail :
  ?id:string prop ->
  ?timeouts:timeouts ->
  aws_role_arn:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_data_connector_aws_cloud_trail

val yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail :
  azurerm_sentinel_data_connector_aws_cloud_trail -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aws_role_arn : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  aws_role_arn:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

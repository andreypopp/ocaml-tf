(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_aws_cloud_trail__timeouts
type azurerm_sentinel_data_connector_aws_cloud_trail

val azurerm_sentinel_data_connector_aws_cloud_trail :
  ?id:string ->
  ?timeouts:azurerm_sentinel_data_connector_aws_cloud_trail__timeouts ->
  aws_role_arn:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit

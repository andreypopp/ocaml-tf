(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_aws_cloud_trail__timeouts
type azurerm_sentinel_data_connector_aws_cloud_trail

type t = private {
  aws_role_arn : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

val azurerm_sentinel_data_connector_aws_cloud_trail :
  ?id:string prop ->
  ?timeouts:azurerm_sentinel_data_connector_aws_cloud_trail__timeouts ->
  aws_role_arn:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

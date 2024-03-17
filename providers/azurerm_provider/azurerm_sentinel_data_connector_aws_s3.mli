(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_aws_s3__timeouts
type azurerm_sentinel_data_connector_aws_s3

val azurerm_sentinel_data_connector_aws_s3 :
  ?timeouts:azurerm_sentinel_data_connector_aws_s3__timeouts ->
  aws_role_arn:string ->
  destination_table:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  sqs_urls:string list ->
  string ->
  unit

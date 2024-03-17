(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_aws_s3__timeouts
type azurerm_sentinel_data_connector_aws_s3

type t = private {
  aws_role_arn : string prop;
  destination_table : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sqs_urls : string list prop;
}

val azurerm_sentinel_data_connector_aws_s3 :
  ?id:string prop ->
  ?timeouts:azurerm_sentinel_data_connector_aws_s3__timeouts ->
  aws_role_arn:string prop ->
  destination_table:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  sqs_urls:string prop list ->
  string ->
  t

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

type azurerm_sentinel_data_connector_aws_s3

val azurerm_sentinel_data_connector_aws_s3 :
  ?id:string prop ->
  ?timeouts:timeouts ->
  aws_role_arn:string prop ->
  destination_table:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  sqs_urls:string prop list ->
  unit ->
  azurerm_sentinel_data_connector_aws_s3

val yojson_of_azurerm_sentinel_data_connector_aws_s3 :
  azurerm_sentinel_data_connector_aws_s3 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aws_role_arn : string prop;
  destination_table : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sqs_urls : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  aws_role_arn:string prop ->
  destination_table:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  sqs_urls:string prop list ->
  string ->
  t

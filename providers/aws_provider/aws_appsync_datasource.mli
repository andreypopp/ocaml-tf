(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_datasource__dynamodb_config__delta_sync_config
type aws_appsync_datasource__dynamodb_config
type aws_appsync_datasource__elasticsearch_config
type aws_appsync_datasource__event_bridge_config

type aws_appsync_datasource__http_config__authorization_config__aws_iam_config

type aws_appsync_datasource__http_config__authorization_config
type aws_appsync_datasource__http_config
type aws_appsync_datasource__lambda_config
type aws_appsync_datasource__opensearchservice_config

type aws_appsync_datasource__relational_database_config__http_endpoint_config

type aws_appsync_datasource__relational_database_config
type aws_appsync_datasource

val aws_appsync_datasource :
  ?description:string ->
  ?id:string ->
  ?service_role_arn:string ->
  api_id:string ->
  name:string ->
  type_:string ->
  dynamodb_config:aws_appsync_datasource__dynamodb_config list ->
  elasticsearch_config:
    aws_appsync_datasource__elasticsearch_config list ->
  event_bridge_config:
    aws_appsync_datasource__event_bridge_config list ->
  http_config:aws_appsync_datasource__http_config list ->
  lambda_config:aws_appsync_datasource__lambda_config list ->
  opensearchservice_config:
    aws_appsync_datasource__opensearchservice_config list ->
  relational_database_config:
    aws_appsync_datasource__relational_database_config list ->
  string ->
  unit

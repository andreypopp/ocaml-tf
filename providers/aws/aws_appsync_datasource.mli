(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dynamodb_config__delta_sync_config

val dynamodb_config__delta_sync_config :
  ?base_table_ttl:float prop ->
  ?delta_sync_table_ttl:float prop ->
  delta_sync_table_name:string prop ->
  unit ->
  dynamodb_config__delta_sync_config

type dynamodb_config

val dynamodb_config :
  ?region:string prop ->
  ?use_caller_credentials:bool prop ->
  ?versioned:bool prop ->
  ?delta_sync_config:dynamodb_config__delta_sync_config list ->
  table_name:string prop ->
  unit ->
  dynamodb_config

type elasticsearch_config

val elasticsearch_config :
  ?region:string prop ->
  endpoint:string prop ->
  unit ->
  elasticsearch_config

type event_bridge_config

val event_bridge_config :
  event_bus_arn:string prop -> unit -> event_bridge_config

type http_config__authorization_config__aws_iam_config

val http_config__authorization_config__aws_iam_config :
  ?signing_region:string prop ->
  ?signing_service_name:string prop ->
  unit ->
  http_config__authorization_config__aws_iam_config

type http_config__authorization_config

val http_config__authorization_config :
  ?authorization_type:string prop ->
  ?aws_iam_config:
    http_config__authorization_config__aws_iam_config list ->
  unit ->
  http_config__authorization_config

type http_config

val http_config :
  ?authorization_config:http_config__authorization_config list ->
  endpoint:string prop ->
  unit ->
  http_config

type lambda_config

val lambda_config : function_arn:string prop -> unit -> lambda_config

type opensearchservice_config

val opensearchservice_config :
  ?region:string prop ->
  endpoint:string prop ->
  unit ->
  opensearchservice_config

type relational_database_config__http_endpoint_config

val relational_database_config__http_endpoint_config :
  ?database_name:string prop ->
  ?region:string prop ->
  ?schema:string prop ->
  aws_secret_store_arn:string prop ->
  db_cluster_identifier:string prop ->
  unit ->
  relational_database_config__http_endpoint_config

type relational_database_config

val relational_database_config :
  ?source_type:string prop ->
  ?http_endpoint_config:
    relational_database_config__http_endpoint_config list ->
  unit ->
  relational_database_config

type aws_appsync_datasource

val aws_appsync_datasource :
  ?description:string prop ->
  ?id:string prop ->
  ?service_role_arn:string prop ->
  ?dynamodb_config:dynamodb_config list ->
  ?elasticsearch_config:elasticsearch_config list ->
  ?event_bridge_config:event_bridge_config list ->
  ?http_config:http_config list ->
  ?lambda_config:lambda_config list ->
  ?opensearchservice_config:opensearchservice_config list ->
  ?relational_database_config:relational_database_config list ->
  api_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_appsync_datasource

val yojson_of_aws_appsync_datasource : aws_appsync_datasource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  service_role_arn : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_role_arn:string prop ->
  ?dynamodb_config:dynamodb_config list ->
  ?elasticsearch_config:elasticsearch_config list ->
  ?event_bridge_config:event_bridge_config list ->
  ?http_config:http_config list ->
  ?lambda_config:lambda_config list ->
  ?opensearchservice_config:opensearchservice_config list ->
  ?relational_database_config:relational_database_config list ->
  api_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?service_role_arn:string prop ->
  ?dynamodb_config:dynamodb_config list ->
  ?elasticsearch_config:elasticsearch_config list ->
  ?event_bridge_config:event_bridge_config list ->
  ?http_config:http_config list ->
  ?lambda_config:lambda_config list ->
  ?opensearchservice_config:opensearchservice_config list ->
  ?relational_database_config:relational_database_config list ->
  api_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource

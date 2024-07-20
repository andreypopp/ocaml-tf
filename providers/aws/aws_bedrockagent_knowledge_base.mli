(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type knowledge_base_configuration__vector_knowledge_base_configuration

val knowledge_base_configuration__vector_knowledge_base_configuration :
  embedding_model_arn:string prop ->
  unit ->
  knowledge_base_configuration__vector_knowledge_base_configuration

type knowledge_base_configuration

val knowledge_base_configuration :
  ?vector_knowledge_base_configuration:
    knowledge_base_configuration__vector_knowledge_base_configuration
    list ->
  type_:string prop ->
  unit ->
  knowledge_base_configuration

type storage_configuration__opensearch_serverless_configuration__field_mapping

val storage_configuration__opensearch_serverless_configuration__field_mapping :
  ?metadata_field:string prop ->
  ?text_field:string prop ->
  ?vector_field:string prop ->
  unit ->
  storage_configuration__opensearch_serverless_configuration__field_mapping

type storage_configuration__opensearch_serverless_configuration

val storage_configuration__opensearch_serverless_configuration :
  ?field_mapping:
    storage_configuration__opensearch_serverless_configuration__field_mapping
    list ->
  collection_arn:string prop ->
  vector_index_name:string prop ->
  unit ->
  storage_configuration__opensearch_serverless_configuration

type storage_configuration__pinecone_configuration__field_mapping

val storage_configuration__pinecone_configuration__field_mapping :
  ?metadata_field:string prop ->
  ?text_field:string prop ->
  unit ->
  storage_configuration__pinecone_configuration__field_mapping

type storage_configuration__pinecone_configuration

val storage_configuration__pinecone_configuration :
  ?namespace:string prop ->
  ?field_mapping:
    storage_configuration__pinecone_configuration__field_mapping list ->
  connection_string:string prop ->
  credentials_secret_arn:string prop ->
  unit ->
  storage_configuration__pinecone_configuration

type storage_configuration__rds_configuration__field_mapping

val storage_configuration__rds_configuration__field_mapping :
  metadata_field:string prop ->
  primary_key_field:string prop ->
  text_field:string prop ->
  vector_field:string prop ->
  unit ->
  storage_configuration__rds_configuration__field_mapping

type storage_configuration__rds_configuration

val storage_configuration__rds_configuration :
  ?field_mapping:
    storage_configuration__rds_configuration__field_mapping list ->
  credentials_secret_arn:string prop ->
  database_name:string prop ->
  resource_arn:string prop ->
  table_name:string prop ->
  unit ->
  storage_configuration__rds_configuration

type storage_configuration__redis_enterprise_cloud_configuration__field_mapping

val storage_configuration__redis_enterprise_cloud_configuration__field_mapping :
  ?metadata_field:string prop ->
  ?text_field:string prop ->
  ?vector_field:string prop ->
  unit ->
  storage_configuration__redis_enterprise_cloud_configuration__field_mapping

type storage_configuration__redis_enterprise_cloud_configuration

val storage_configuration__redis_enterprise_cloud_configuration :
  ?field_mapping:
    storage_configuration__redis_enterprise_cloud_configuration__field_mapping
    list ->
  credentials_secret_arn:string prop ->
  endpoint:string prop ->
  vector_index_name:string prop ->
  unit ->
  storage_configuration__redis_enterprise_cloud_configuration

type storage_configuration

val storage_configuration :
  ?opensearch_serverless_configuration:
    storage_configuration__opensearch_serverless_configuration list ->
  ?pinecone_configuration:
    storage_configuration__pinecone_configuration list ->
  ?rds_configuration:storage_configuration__rds_configuration list ->
  ?redis_enterprise_cloud_configuration:
    storage_configuration__redis_enterprise_cloud_configuration list ->
  type_:string prop ->
  unit ->
  storage_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_bedrockagent_knowledge_base

val aws_bedrockagent_knowledge_base :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?knowledge_base_configuration:knowledge_base_configuration list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_bedrockagent_knowledge_base

val yojson_of_aws_bedrockagent_knowledge_base :
  aws_bedrockagent_knowledge_base -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  description : string prop;
  failure_reasons : string list prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?knowledge_base_configuration:knowledge_base_configuration list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?knowledge_base_configuration:knowledge_base_configuration list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource

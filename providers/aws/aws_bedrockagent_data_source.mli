(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_source_configuration__s3_configuration

val data_source_configuration__s3_configuration :
  ?bucket_owner_account_id:string prop ->
  ?inclusion_prefixes:string prop list ->
  bucket_arn:string prop ->
  unit ->
  data_source_configuration__s3_configuration

type data_source_configuration

val data_source_configuration :
  ?s3_configuration:data_source_configuration__s3_configuration list ->
  type_:string prop ->
  unit ->
  data_source_configuration

type server_side_encryption_configuration

val server_side_encryption_configuration :
  ?kms_key_arn:string prop ->
  unit ->
  server_side_encryption_configuration

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration

val vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration :
  max_tokens:float prop ->
  overlap_percentage:float prop ->
  unit ->
  vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration

type vector_ingestion_configuration__chunking_configuration

val vector_ingestion_configuration__chunking_configuration :
  ?fixed_size_chunking_configuration:
    vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration
    list ->
  chunking_strategy:string prop ->
  unit ->
  vector_ingestion_configuration__chunking_configuration

type vector_ingestion_configuration

val vector_ingestion_configuration :
  ?chunking_configuration:
    vector_ingestion_configuration__chunking_configuration list ->
  unit ->
  vector_ingestion_configuration

type aws_bedrockagent_data_source

val aws_bedrockagent_data_source :
  ?data_deletion_policy:string prop ->
  ?description:string prop ->
  ?data_source_configuration:data_source_configuration list ->
  ?server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  ?timeouts:timeouts ->
  ?vector_ingestion_configuration:vector_ingestion_configuration list ->
  knowledge_base_id:string prop ->
  name:string prop ->
  unit ->
  aws_bedrockagent_data_source

val yojson_of_aws_bedrockagent_data_source :
  aws_bedrockagent_data_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_deletion_policy : string prop;
  data_source_id : string prop;
  description : string prop;
  id : string prop;
  knowledge_base_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_deletion_policy:string prop ->
  ?description:string prop ->
  ?data_source_configuration:data_source_configuration list ->
  ?server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  ?timeouts:timeouts ->
  ?vector_ingestion_configuration:vector_ingestion_configuration list ->
  knowledge_base_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?data_deletion_policy:string prop ->
  ?description:string prop ->
  ?data_source_configuration:data_source_configuration list ->
  ?server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  ?timeouts:timeouts ->
  ?vector_ingestion_configuration:vector_ingestion_configuration list ->
  knowledge_base_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

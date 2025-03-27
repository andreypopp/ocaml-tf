(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_raft_snapshot_agent_config

val vault_raft_snapshot_agent_config :
  ?aws_access_key_id:string prop ->
  ?aws_s3_bucket:string prop ->
  ?aws_s3_disable_tls:bool prop ->
  ?aws_s3_enable_kms:bool prop ->
  ?aws_s3_endpoint:string prop ->
  ?aws_s3_force_path_style:bool prop ->
  ?aws_s3_kms_key:string prop ->
  ?aws_s3_region:string prop ->
  ?aws_s3_server_side_encryption:bool prop ->
  ?aws_secret_access_key:string prop ->
  ?aws_session_token:string prop ->
  ?azure_account_key:string prop ->
  ?azure_account_name:string prop ->
  ?azure_blob_environment:string prop ->
  ?azure_container_name:string prop ->
  ?azure_endpoint:string prop ->
  ?file_prefix:string prop ->
  ?google_disable_tls:bool prop ->
  ?google_endpoint:string prop ->
  ?google_gcs_bucket:string prop ->
  ?google_service_account_key:string prop ->
  ?id:string prop ->
  ?local_max_space:float prop ->
  ?namespace:string prop ->
  ?retain:float prop ->
  interval_seconds:float prop ->
  name:string prop ->
  path_prefix:string prop ->
  storage_type:string prop ->
  unit ->
  vault_raft_snapshot_agent_config

val yojson_of_vault_raft_snapshot_agent_config : vault_raft_snapshot_agent_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aws_access_key_id : string prop;
  aws_s3_bucket : string prop;
  aws_s3_disable_tls : bool prop;
  aws_s3_enable_kms : bool prop;
  aws_s3_endpoint : string prop;
  aws_s3_force_path_style : bool prop;
  aws_s3_kms_key : string prop;
  aws_s3_region : string prop;
  aws_s3_server_side_encryption : bool prop;
  aws_secret_access_key : string prop;
  aws_session_token : string prop;
  azure_account_key : string prop;
  azure_account_name : string prop;
  azure_blob_environment : string prop;
  azure_container_name : string prop;
  azure_endpoint : string prop;
  file_prefix : string prop;
  google_disable_tls : bool prop;
  google_endpoint : string prop;
  google_gcs_bucket : string prop;
  google_service_account_key : string prop;
  id : string prop;
  interval_seconds : float prop;
  local_max_space : float prop;
  name : string prop;
  namespace : string prop;
  path_prefix : string prop;
  retain : float prop;
  storage_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_access_key_id:string prop ->
  ?aws_s3_bucket:string prop ->
  ?aws_s3_disable_tls:bool prop ->
  ?aws_s3_enable_kms:bool prop ->
  ?aws_s3_endpoint:string prop ->
  ?aws_s3_force_path_style:bool prop ->
  ?aws_s3_kms_key:string prop ->
  ?aws_s3_region:string prop ->
  ?aws_s3_server_side_encryption:bool prop ->
  ?aws_secret_access_key:string prop ->
  ?aws_session_token:string prop ->
  ?azure_account_key:string prop ->
  ?azure_account_name:string prop ->
  ?azure_blob_environment:string prop ->
  ?azure_container_name:string prop ->
  ?azure_endpoint:string prop ->
  ?file_prefix:string prop ->
  ?google_disable_tls:bool prop ->
  ?google_endpoint:string prop ->
  ?google_gcs_bucket:string prop ->
  ?google_service_account_key:string prop ->
  ?id:string prop ->
  ?local_max_space:float prop ->
  ?namespace:string prop ->
  ?retain:float prop ->
  interval_seconds:float prop ->
  name:string prop ->
  path_prefix:string prop ->
  storage_type:string prop ->
  string ->
  t

val make :
  ?aws_access_key_id:string prop ->
  ?aws_s3_bucket:string prop ->
  ?aws_s3_disable_tls:bool prop ->
  ?aws_s3_enable_kms:bool prop ->
  ?aws_s3_endpoint:string prop ->
  ?aws_s3_force_path_style:bool prop ->
  ?aws_s3_kms_key:string prop ->
  ?aws_s3_region:string prop ->
  ?aws_s3_server_side_encryption:bool prop ->
  ?aws_secret_access_key:string prop ->
  ?aws_session_token:string prop ->
  ?azure_account_key:string prop ->
  ?azure_account_name:string prop ->
  ?azure_blob_environment:string prop ->
  ?azure_container_name:string prop ->
  ?azure_endpoint:string prop ->
  ?file_prefix:string prop ->
  ?google_disable_tls:bool prop ->
  ?google_endpoint:string prop ->
  ?google_gcs_bucket:string prop ->
  ?google_service_account_key:string prop ->
  ?id:string prop ->
  ?local_max_space:float prop ->
  ?namespace:string prop ->
  ?retain:float prop ->
  interval_seconds:float prop ->
  name:string prop ->
  path_prefix:string prop ->
  storage_type:string prop ->
  string ->
  t Tf_core.resource

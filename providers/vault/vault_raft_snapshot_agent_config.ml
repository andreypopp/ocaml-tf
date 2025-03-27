(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_raft_snapshot_agent_config = {
  aws_access_key_id : string prop option; [@option]
  aws_s3_bucket : string prop option; [@option]
  aws_s3_disable_tls : bool prop option; [@option]
  aws_s3_enable_kms : bool prop option; [@option]
  aws_s3_endpoint : string prop option; [@option]
  aws_s3_force_path_style : bool prop option; [@option]
  aws_s3_kms_key : string prop option; [@option]
  aws_s3_region : string prop option; [@option]
  aws_s3_server_side_encryption : bool prop option; [@option]
  aws_secret_access_key : string prop option; [@option]
  aws_session_token : string prop option; [@option]
  azure_account_key : string prop option; [@option]
  azure_account_name : string prop option; [@option]
  azure_blob_environment : string prop option; [@option]
  azure_container_name : string prop option; [@option]
  azure_endpoint : string prop option; [@option]
  file_prefix : string prop option; [@option]
  google_disable_tls : bool prop option; [@option]
  google_endpoint : string prop option; [@option]
  google_gcs_bucket : string prop option; [@option]
  google_service_account_key : string prop option; [@option]
  id : string prop option; [@option]
  interval_seconds : float prop;
  local_max_space : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path_prefix : string prop;
  retain : float prop option; [@option]
  storage_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_raft_snapshot_agent_config) -> ()

let yojson_of_vault_raft_snapshot_agent_config =
  (function
   | {
       aws_access_key_id = v_aws_access_key_id;
       aws_s3_bucket = v_aws_s3_bucket;
       aws_s3_disable_tls = v_aws_s3_disable_tls;
       aws_s3_enable_kms = v_aws_s3_enable_kms;
       aws_s3_endpoint = v_aws_s3_endpoint;
       aws_s3_force_path_style = v_aws_s3_force_path_style;
       aws_s3_kms_key = v_aws_s3_kms_key;
       aws_s3_region = v_aws_s3_region;
       aws_s3_server_side_encryption = v_aws_s3_server_side_encryption;
       aws_secret_access_key = v_aws_secret_access_key;
       aws_session_token = v_aws_session_token;
       azure_account_key = v_azure_account_key;
       azure_account_name = v_azure_account_name;
       azure_blob_environment = v_azure_blob_environment;
       azure_container_name = v_azure_container_name;
       azure_endpoint = v_azure_endpoint;
       file_prefix = v_file_prefix;
       google_disable_tls = v_google_disable_tls;
       google_endpoint = v_google_endpoint;
       google_gcs_bucket = v_google_gcs_bucket;
       google_service_account_key = v_google_service_account_key;
       id = v_id;
       interval_seconds = v_interval_seconds;
       local_max_space = v_local_max_space;
       name = v_name;
       namespace = v_namespace;
       path_prefix = v_path_prefix;
       retain = v_retain;
       storage_type = v_storage_type;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_storage_type in
       ("storage_type", arg) :: bnds
     in
     let bnds =
       match v_retain with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "retain", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path_prefix in
       ("path_prefix", arg) :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_local_max_space with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "local_max_space", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_float v_interval_seconds in
       ("interval_seconds", arg) :: bnds
     in
     let bnds =
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_google_service_account_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "google_service_account_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_google_gcs_bucket with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "google_gcs_bucket", arg in
         bnd :: bnds
     in
     let bnds =
       match v_google_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "google_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_google_disable_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "google_disable_tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_file_prefix with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "file_prefix", arg in
         bnd :: bnds
     in
     let bnds =
       match v_azure_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "azure_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_azure_container_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "azure_container_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_azure_blob_environment with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "azure_blob_environment", arg in
         bnd :: bnds
     in
     let bnds =
       match v_azure_account_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "azure_account_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_azure_account_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "azure_account_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_session_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_session_token", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_secret_access_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_secret_access_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_server_side_encryption with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "aws_s3_server_side_encryption", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_s3_region", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_kms_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_s3_kms_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_force_path_style with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "aws_s3_force_path_style", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_s3_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_enable_kms with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "aws_s3_enable_kms", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_disable_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "aws_s3_disable_tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_s3_bucket with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_s3_bucket", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_access_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_access_key_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_raft_snapshot_agent_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_raft_snapshot_agent_config

[@@@deriving.end]

let vault_raft_snapshot_agent_config ?aws_access_key_id ?aws_s3_bucket ?aws_s3_disable_tls ?aws_s3_enable_kms
  ?aws_s3_endpoint ?aws_s3_force_path_style ?aws_s3_kms_key ?aws_s3_region ?aws_s3_server_side_encryption
  ?aws_secret_access_key ?aws_session_token ?azure_account_key ?azure_account_name ?azure_blob_environment
  ?azure_container_name ?azure_endpoint ?file_prefix ?google_disable_tls ?google_endpoint ?google_gcs_bucket
  ?google_service_account_key ?id ?local_max_space ?namespace ?retain ~interval_seconds ~name ~path_prefix ~storage_type
  () =
  ({
     aws_access_key_id;
     aws_s3_bucket;
     aws_s3_disable_tls;
     aws_s3_enable_kms;
     aws_s3_endpoint;
     aws_s3_force_path_style;
     aws_s3_kms_key;
     aws_s3_region;
     aws_s3_server_side_encryption;
     aws_secret_access_key;
     aws_session_token;
     azure_account_key;
     azure_account_name;
     azure_blob_environment;
     azure_container_name;
     azure_endpoint;
     file_prefix;
     google_disable_tls;
     google_endpoint;
     google_gcs_bucket;
     google_service_account_key;
     id;
     interval_seconds;
     local_max_space;
     name;
     namespace;
     path_prefix;
     retain;
     storage_type;
   }
    : vault_raft_snapshot_agent_config)

type t = {
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

let make ?aws_access_key_id ?aws_s3_bucket ?aws_s3_disable_tls ?aws_s3_enable_kms ?aws_s3_endpoint
  ?aws_s3_force_path_style ?aws_s3_kms_key ?aws_s3_region ?aws_s3_server_side_encryption ?aws_secret_access_key
  ?aws_session_token ?azure_account_key ?azure_account_name ?azure_blob_environment ?azure_container_name
  ?azure_endpoint ?file_prefix ?google_disable_tls ?google_endpoint ?google_gcs_bucket ?google_service_account_key ?id
  ?local_max_space ?namespace ?retain ~interval_seconds ~name ~path_prefix ~storage_type __id =
  let __type = "vault_raft_snapshot_agent_config" in
  let __attrs =
    ({
       tf_name = __id;
       aws_access_key_id = Prop.computed __type __id "aws_access_key_id";
       aws_s3_bucket = Prop.computed __type __id "aws_s3_bucket";
       aws_s3_disable_tls = Prop.computed __type __id "aws_s3_disable_tls";
       aws_s3_enable_kms = Prop.computed __type __id "aws_s3_enable_kms";
       aws_s3_endpoint = Prop.computed __type __id "aws_s3_endpoint";
       aws_s3_force_path_style = Prop.computed __type __id "aws_s3_force_path_style";
       aws_s3_kms_key = Prop.computed __type __id "aws_s3_kms_key";
       aws_s3_region = Prop.computed __type __id "aws_s3_region";
       aws_s3_server_side_encryption = Prop.computed __type __id "aws_s3_server_side_encryption";
       aws_secret_access_key = Prop.computed __type __id "aws_secret_access_key";
       aws_session_token = Prop.computed __type __id "aws_session_token";
       azure_account_key = Prop.computed __type __id "azure_account_key";
       azure_account_name = Prop.computed __type __id "azure_account_name";
       azure_blob_environment = Prop.computed __type __id "azure_blob_environment";
       azure_container_name = Prop.computed __type __id "azure_container_name";
       azure_endpoint = Prop.computed __type __id "azure_endpoint";
       file_prefix = Prop.computed __type __id "file_prefix";
       google_disable_tls = Prop.computed __type __id "google_disable_tls";
       google_endpoint = Prop.computed __type __id "google_endpoint";
       google_gcs_bucket = Prop.computed __type __id "google_gcs_bucket";
       google_service_account_key = Prop.computed __type __id "google_service_account_key";
       id = Prop.computed __type __id "id";
       interval_seconds = Prop.computed __type __id "interval_seconds";
       local_max_space = Prop.computed __type __id "local_max_space";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path_prefix = Prop.computed __type __id "path_prefix";
       retain = Prop.computed __type __id "retain";
       storage_type = Prop.computed __type __id "storage_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_raft_snapshot_agent_config
        (vault_raft_snapshot_agent_config ?aws_access_key_id ?aws_s3_bucket ?aws_s3_disable_tls ?aws_s3_enable_kms
           ?aws_s3_endpoint ?aws_s3_force_path_style ?aws_s3_kms_key ?aws_s3_region ?aws_s3_server_side_encryption
           ?aws_secret_access_key ?aws_session_token ?azure_account_key ?azure_account_name ?azure_blob_environment
           ?azure_container_name ?azure_endpoint ?file_prefix ?google_disable_tls ?google_endpoint ?google_gcs_bucket
           ?google_service_account_key ?id ?local_max_space ?namespace ?retain ~interval_seconds ~name ~path_prefix
           ~storage_type ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_access_key_id ?aws_s3_bucket ?aws_s3_disable_tls ?aws_s3_enable_kms ?aws_s3_endpoint
  ?aws_s3_force_path_style ?aws_s3_kms_key ?aws_s3_region ?aws_s3_server_side_encryption ?aws_secret_access_key
  ?aws_session_token ?azure_account_key ?azure_account_name ?azure_blob_environment ?azure_container_name
  ?azure_endpoint ?file_prefix ?google_disable_tls ?google_endpoint ?google_gcs_bucket ?google_service_account_key ?id
  ?local_max_space ?namespace ?retain ~interval_seconds ~name ~path_prefix ~storage_type __id =
  let (r : _ Tf_core.resource) =
    make ?aws_access_key_id ?aws_s3_bucket ?aws_s3_disable_tls ?aws_s3_enable_kms ?aws_s3_endpoint
      ?aws_s3_force_path_style ?aws_s3_kms_key ?aws_s3_region ?aws_s3_server_side_encryption ?aws_secret_access_key
      ?aws_session_token ?azure_account_key ?azure_account_name ?azure_blob_environment ?azure_container_name
      ?azure_endpoint ?file_prefix ?google_disable_tls ?google_endpoint ?google_gcs_bucket ?google_service_account_key
      ?id ?local_max_space ?namespace ?retain ~interval_seconds ~name ~path_prefix ~storage_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

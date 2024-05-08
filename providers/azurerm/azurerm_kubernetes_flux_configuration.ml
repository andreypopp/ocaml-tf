(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type blob_storage__managed_identity = { client_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_storage__managed_identity) -> ()

let yojson_of_blob_storage__managed_identity =
  (function
   | { client_id = v_client_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : blob_storage__managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_storage__managed_identity

[@@@deriving.end]

type blob_storage__service_principal = {
  client_certificate_base64 : string prop option; [@option]
  client_certificate_password : string prop option; [@option]
  client_certificate_send_chain : bool prop option; [@option]
  client_id : string prop;
  client_secret : string prop option; [@option]
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_storage__service_principal) -> ()

let yojson_of_blob_storage__service_principal =
  (function
   | {
       client_certificate_base64 = v_client_certificate_base64;
       client_certificate_password = v_client_certificate_password;
       client_certificate_send_chain =
         v_client_certificate_send_chain;
       client_id = v_client_id;
       client_secret = v_client_secret;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         match v_client_certificate_send_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_certificate_send_chain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_base64", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blob_storage__service_principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_storage__service_principal

[@@@deriving.end]

type blob_storage = {
  account_key : string prop option; [@option]
  container_id : string prop;
  local_auth_reference : string prop option; [@option]
  sas_token : string prop option; [@option]
  sync_interval_in_seconds : float prop option; [@option]
  timeout_in_seconds : float prop option; [@option]
  managed_identity : blob_storage__managed_identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_principal : blob_storage__service_principal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_storage) -> ()

let yojson_of_blob_storage =
  (function
   | {
       account_key = v_account_key;
       container_id = v_container_id;
       local_auth_reference = v_local_auth_reference;
       sas_token = v_sas_token;
       sync_interval_in_seconds = v_sync_interval_in_seconds;
       timeout_in_seconds = v_timeout_in_seconds;
       managed_identity = v_managed_identity;
       service_principal = v_service_principal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service_principal then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_blob_storage__service_principal)
               v_service_principal
           in
           let bnd = "service_principal", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_blob_storage__managed_identity)
               v_managed_identity
           in
           let bnd = "managed_identity", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sync_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sas_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sas_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_auth_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_auth_reference", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container_id in
         ("container_id", arg) :: bnds
       in
       let bnds =
         match v_account_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blob_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_storage

[@@@deriving.end]

type bucket = {
  access_key : string prop option; [@option]
  bucket_name : string prop;
  local_auth_reference : string prop option; [@option]
  secret_key_base64 : string prop option; [@option]
  sync_interval_in_seconds : float prop option; [@option]
  timeout_in_seconds : float prop option; [@option]
  tls_enabled : bool prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bucket) -> ()

let yojson_of_bucket =
  (function
   | {
       access_key = v_access_key;
       bucket_name = v_bucket_name;
       local_auth_reference = v_local_auth_reference;
       secret_key_base64 = v_secret_key_base64;
       sync_interval_in_seconds = v_sync_interval_in_seconds;
       timeout_in_seconds = v_timeout_in_seconds;
       tls_enabled = v_tls_enabled;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_tls_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sync_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_key_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_key_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_auth_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_auth_reference", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       let bnds =
         match v_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bucket

[@@@deriving.end]

type git_repository = {
  https_ca_cert_base64 : string prop option; [@option]
  https_key_base64 : string prop option; [@option]
  https_user : string prop option; [@option]
  local_auth_reference : string prop option; [@option]
  reference_type : string prop;
  reference_value : string prop;
  ssh_known_hosts_base64 : string prop option; [@option]
  ssh_private_key_base64 : string prop option; [@option]
  sync_interval_in_seconds : float prop option; [@option]
  timeout_in_seconds : float prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_repository) -> ()

let yojson_of_git_repository =
  (function
   | {
       https_ca_cert_base64 = v_https_ca_cert_base64;
       https_key_base64 = v_https_key_base64;
       https_user = v_https_user;
       local_auth_reference = v_local_auth_reference;
       reference_type = v_reference_type;
       reference_value = v_reference_value;
       ssh_known_hosts_base64 = v_ssh_known_hosts_base64;
       ssh_private_key_base64 = v_ssh_private_key_base64;
       sync_interval_in_seconds = v_sync_interval_in_seconds;
       timeout_in_seconds = v_timeout_in_seconds;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sync_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_private_key_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_private_key_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_known_hosts_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_known_hosts_base64", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reference_value
         in
         ("reference_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reference_type
         in
         ("reference_type", arg) :: bnds
       in
       let bnds =
         match v_local_auth_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_auth_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_key_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_key_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_ca_cert_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_ca_cert_base64", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : git_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_repository

[@@@deriving.end]

type kustomizations = {
  depends_on : string prop list option; [@option]
  garbage_collection_enabled : bool prop option; [@option]
  name : string prop;
  path : string prop option; [@option]
  recreating_enabled : bool prop option; [@option]
  retry_interval_in_seconds : float prop option; [@option]
  sync_interval_in_seconds : float prop option; [@option]
  timeout_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kustomizations) -> ()

let yojson_of_kustomizations =
  (function
   | {
       depends_on = v_depends_on;
       garbage_collection_enabled = v_garbage_collection_enabled;
       name = v_name;
       path = v_path;
       recreating_enabled = v_recreating_enabled;
       retry_interval_in_seconds = v_retry_interval_in_seconds;
       sync_interval_in_seconds = v_sync_interval_in_seconds;
       timeout_in_seconds = v_timeout_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sync_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recreating_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recreating_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_garbage_collection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "garbage_collection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_depends_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "depends_on", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kustomizations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kustomizations

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_kubernetes_flux_configuration = {
  cluster_id : string prop;
  continuous_reconciliation_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop;
  scope : string prop option; [@option]
  blob_storage : blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bucket : bucket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  git_repository : git_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kustomizations : kustomizations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_flux_configuration) -> ()

let yojson_of_azurerm_kubernetes_flux_configuration =
  (function
   | {
       cluster_id = v_cluster_id;
       continuous_reconciliation_enabled =
         v_continuous_reconciliation_enabled;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       scope = v_scope;
       blob_storage = v_blob_storage;
       bucket = v_bucket;
       git_repository = v_git_repository;
       kustomizations = v_kustomizations;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kustomizations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kustomizations)
               v_kustomizations
           in
           let bnd = "kustomizations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git_repository then bnds
         else
           let arg =
             (yojson_of_list yojson_of_git_repository)
               v_git_repository
           in
           let bnd = "git_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bucket then bnds
         else
           let arg = (yojson_of_list yojson_of_bucket) v_bucket in
           let bnd = "bucket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_blob_storage then bnds
         else
           let arg =
             (yojson_of_list yojson_of_blob_storage) v_blob_storage
           in
           let bnd = "blob_storage", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_continuous_reconciliation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "continuous_reconciliation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kubernetes_flux_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_flux_configuration

[@@@deriving.end]

let blob_storage__managed_identity ~client_id () :
    blob_storage__managed_identity =
  { client_id }

let blob_storage__service_principal ?client_certificate_base64
    ?client_certificate_password ?client_certificate_send_chain
    ?client_secret ~client_id ~tenant_id () :
    blob_storage__service_principal =
  {
    client_certificate_base64;
    client_certificate_password;
    client_certificate_send_chain;
    client_id;
    client_secret;
    tenant_id;
  }

let blob_storage ?account_key ?local_auth_reference ?sas_token
    ?sync_interval_in_seconds ?timeout_in_seconds
    ?(managed_identity = []) ?(service_principal = []) ~container_id
    () : blob_storage =
  {
    account_key;
    container_id;
    local_auth_reference;
    sas_token;
    sync_interval_in_seconds;
    timeout_in_seconds;
    managed_identity;
    service_principal;
  }

let bucket ?access_key ?local_auth_reference ?secret_key_base64
    ?sync_interval_in_seconds ?timeout_in_seconds ?tls_enabled
    ~bucket_name ~url () : bucket =
  {
    access_key;
    bucket_name;
    local_auth_reference;
    secret_key_base64;
    sync_interval_in_seconds;
    timeout_in_seconds;
    tls_enabled;
    url;
  }

let git_repository ?https_ca_cert_base64 ?https_key_base64
    ?https_user ?local_auth_reference ?ssh_known_hosts_base64
    ?ssh_private_key_base64 ?sync_interval_in_seconds
    ?timeout_in_seconds ~reference_type ~reference_value ~url () :
    git_repository =
  {
    https_ca_cert_base64;
    https_key_base64;
    https_user;
    local_auth_reference;
    reference_type;
    reference_value;
    ssh_known_hosts_base64;
    ssh_private_key_base64;
    sync_interval_in_seconds;
    timeout_in_seconds;
    url;
  }

let kustomizations ?depends_on ?garbage_collection_enabled ?path
    ?recreating_enabled ?retry_interval_in_seconds
    ?sync_interval_in_seconds ?timeout_in_seconds ~name () :
    kustomizations =
  {
    depends_on;
    garbage_collection_enabled;
    name;
    path;
    recreating_enabled;
    retry_interval_in_seconds;
    sync_interval_in_seconds;
    timeout_in_seconds;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_flux_configuration
    ?continuous_reconciliation_enabled ?id ?scope
    ?(blob_storage = []) ?(bucket = []) ?(git_repository = [])
    ?timeouts ~cluster_id ~name ~namespace ~kustomizations () :
    azurerm_kubernetes_flux_configuration =
  {
    cluster_id;
    continuous_reconciliation_enabled;
    id;
    name;
    namespace;
    scope;
    blob_storage;
    bucket;
    git_repository;
    kustomizations;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_id : string prop;
  continuous_reconciliation_enabled : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  scope : string prop;
}

let make ?continuous_reconciliation_enabled ?id ?scope
    ?(blob_storage = []) ?(bucket = []) ?(git_repository = [])
    ?timeouts ~cluster_id ~name ~namespace ~kustomizations __id =
  let __type = "azurerm_kubernetes_flux_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_id = Prop.computed __type __id "cluster_id";
       continuous_reconciliation_enabled =
         Prop.computed __type __id
           "continuous_reconciliation_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_flux_configuration
        (azurerm_kubernetes_flux_configuration
           ?continuous_reconciliation_enabled ?id ?scope
           ~blob_storage ~bucket ~git_repository ?timeouts
           ~cluster_id ~name ~namespace ~kustomizations ());
    attrs = __attrs;
  }

let register ?tf_module ?continuous_reconciliation_enabled ?id ?scope
    ?(blob_storage = []) ?(bucket = []) ?(git_repository = [])
    ?timeouts ~cluster_id ~name ~namespace ~kustomizations __id =
  let (r : _ Tf_core.resource) =
    make ?continuous_reconciliation_enabled ?id ?scope ~blob_storage
      ~bucket ~git_repository ?timeouts ~cluster_id ~name ~namespace
      ~kustomizations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

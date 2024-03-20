(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_files_authentication__active_directory = {
  domain_guid : string prop;
  domain_name : string prop;
  domain_sid : string prop option; [@option]
  forest_name : string prop option; [@option]
  netbios_domain_name : string prop option; [@option]
  storage_sid : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_files_authentication__active_directory) -> ()

let yojson_of_azure_files_authentication__active_directory =
  (function
   | {
       domain_guid = v_domain_guid;
       domain_name = v_domain_name;
       domain_sid = v_domain_sid;
       forest_name = v_forest_name;
       netbios_domain_name = v_netbios_domain_name;
       storage_sid = v_storage_sid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_sid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_sid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_netbios_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "netbios_domain_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forest_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forest_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_sid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_sid", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_guid in
         ("domain_guid", arg) :: bnds
       in
       `Assoc bnds
    : azure_files_authentication__active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_files_authentication__active_directory

[@@@deriving.end]

type azure_files_authentication = {
  directory_type : string prop;
  active_directory :
    azure_files_authentication__active_directory list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_files_authentication) -> ()

let yojson_of_azure_files_authentication =
  (function
   | {
       directory_type = v_directory_type;
       active_directory = v_active_directory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_azure_files_authentication__active_directory
             v_active_directory
         in
         ("active_directory", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_directory_type
         in
         ("directory_type", arg) :: bnds
       in
       `Assoc bnds
    : azure_files_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_files_authentication

[@@@deriving.end]

type blob_properties__container_delete_retention_policy = {
  days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : blob_properties__container_delete_retention_policy) -> ()

let yojson_of_blob_properties__container_delete_retention_policy =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blob_properties__container_delete_retention_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_properties__container_delete_retention_policy

[@@@deriving.end]

type blob_properties__cors_rule = {
  allowed_headers : string prop list;
  allowed_methods : string prop list;
  allowed_origins : string prop list;
  exposed_headers : string prop list;
  max_age_in_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_properties__cors_rule) -> ()

let yojson_of_blob_properties__cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       exposed_headers = v_exposed_headers;
       max_age_in_seconds = v_max_age_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_age_in_seconds
         in
         ("max_age_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_exposed_headers
         in
         ("exposed_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_methods
         in
         ("allowed_methods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_headers
         in
         ("allowed_headers", arg) :: bnds
       in
       `Assoc bnds
    : blob_properties__cors_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_properties__cors_rule

[@@@deriving.end]

type blob_properties__delete_retention_policy = {
  days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_properties__delete_retention_policy) -> ()

let yojson_of_blob_properties__delete_retention_policy =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blob_properties__delete_retention_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_properties__delete_retention_policy

[@@@deriving.end]

type blob_properties__restore_policy = { days : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_properties__restore_policy) -> ()

let yojson_of_blob_properties__restore_policy =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_days in
         ("days", arg) :: bnds
       in
       `Assoc bnds
    : blob_properties__restore_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_properties__restore_policy

[@@@deriving.end]

type blob_properties = {
  change_feed_enabled : bool prop option; [@option]
  change_feed_retention_in_days : float prop option; [@option]
  default_service_version : string prop option; [@option]
  last_access_time_enabled : bool prop option; [@option]
  versioning_enabled : bool prop option; [@option]
  container_delete_retention_policy :
    blob_properties__container_delete_retention_policy list;
  cors_rule : blob_properties__cors_rule list;
  delete_retention_policy :
    blob_properties__delete_retention_policy list;
  restore_policy : blob_properties__restore_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blob_properties) -> ()

let yojson_of_blob_properties =
  (function
   | {
       change_feed_enabled = v_change_feed_enabled;
       change_feed_retention_in_days =
         v_change_feed_retention_in_days;
       default_service_version = v_default_service_version;
       last_access_time_enabled = v_last_access_time_enabled;
       versioning_enabled = v_versioning_enabled;
       container_delete_retention_policy =
         v_container_delete_retention_policy;
       cors_rule = v_cors_rule;
       delete_retention_policy = v_delete_retention_policy;
       restore_policy = v_restore_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_blob_properties__restore_policy
             v_restore_policy
         in
         ("restore_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_blob_properties__delete_retention_policy
             v_delete_retention_policy
         in
         ("delete_retention_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_blob_properties__cors_rule
             v_cors_rule
         in
         ("cors_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_blob_properties__container_delete_retention_policy
             v_container_delete_retention_policy
         in
         ("container_delete_retention_policy", arg) :: bnds
       in
       let bnds =
         match v_versioning_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "versioning_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_access_time_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "last_access_time_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_service_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_service_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_change_feed_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "change_feed_retention_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_change_feed_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "change_feed_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blob_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blob_properties

[@@@deriving.end]

type custom_domain = {
  name : string prop;
  use_subdomain : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_domain) -> ()

let yojson_of_custom_domain =
  (function
   | { name = v_name; use_subdomain = v_use_subdomain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_subdomain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_subdomain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : custom_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_domain

[@@@deriving.end]

type customer_managed_key = {
  key_vault_key_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : customer_managed_key) -> ()

let yojson_of_customer_managed_key =
  (function
   | {
       key_vault_key_id = v_key_vault_key_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       `Assoc bnds
    : customer_managed_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_customer_managed_key

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type immutability_policy = {
  allow_protected_append_writes : bool prop;
  period_since_creation_in_days : float prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : immutability_policy) -> ()

let yojson_of_immutability_policy =
  (function
   | {
       allow_protected_append_writes =
         v_allow_protected_append_writes;
       period_since_creation_in_days =
         v_period_since_creation_in_days;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_period_since_creation_in_days
         in
         ("period_since_creation_in_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_allow_protected_append_writes
         in
         ("allow_protected_append_writes", arg) :: bnds
       in
       `Assoc bnds
    : immutability_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_immutability_policy

[@@@deriving.end]

type network_rules__private_link_access = {
  endpoint_resource_id : string prop;
  endpoint_tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rules__private_link_access) -> ()

let yojson_of_network_rules__private_link_access =
  (function
   | {
       endpoint_resource_id = v_endpoint_resource_id;
       endpoint_tenant_id = v_endpoint_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_endpoint_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoint_resource_id
         in
         ("endpoint_resource_id", arg) :: bnds
       in
       `Assoc bnds
    : network_rules__private_link_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rules__private_link_access

[@@@deriving.end]

type network_rules = {
  bypass : string prop list option; [@option]
  default_action : string prop;
  ip_rules : string prop list option; [@option]
  virtual_network_subnet_ids : string prop list option; [@option]
  private_link_access : network_rules__private_link_access list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rules) -> ()

let yojson_of_network_rules =
  (function
   | {
       bypass = v_bypass;
       default_action = v_default_action;
       ip_rules = v_ip_rules;
       virtual_network_subnet_ids = v_virtual_network_subnet_ids;
       private_link_access = v_private_link_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_rules__private_link_access
             v_private_link_access
         in
         ("private_link_access", arg) :: bnds
       in
       let bnds =
         match v_virtual_network_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "virtual_network_subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_rules", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       let bnds =
         match v_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bypass", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rules

[@@@deriving.end]

type queue_properties__cors_rule = {
  allowed_headers : string prop list;
  allowed_methods : string prop list;
  allowed_origins : string prop list;
  exposed_headers : string prop list;
  max_age_in_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_properties__cors_rule) -> ()

let yojson_of_queue_properties__cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       exposed_headers = v_exposed_headers;
       max_age_in_seconds = v_max_age_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_age_in_seconds
         in
         ("max_age_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_exposed_headers
         in
         ("exposed_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_methods
         in
         ("allowed_methods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_headers
         in
         ("allowed_headers", arg) :: bnds
       in
       `Assoc bnds
    : queue_properties__cors_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_properties__cors_rule

[@@@deriving.end]

type queue_properties__hour_metrics = {
  enabled : bool prop;
  include_apis : bool prop option; [@option]
  retention_policy_days : float prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_properties__hour_metrics) -> ()

let yojson_of_queue_properties__hour_metrics =
  (function
   | {
       enabled = v_enabled;
       include_apis = v_include_apis;
       retention_policy_days = v_retention_policy_days;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_retention_policy_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_policy_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_apis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_apis", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : queue_properties__hour_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_properties__hour_metrics

[@@@deriving.end]

type queue_properties__logging = {
  delete : bool prop;
  read : bool prop;
  retention_policy_days : float prop option; [@option]
  version : string prop;
  write : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_properties__logging) -> ()

let yojson_of_queue_properties__logging =
  (function
   | {
       delete = v_delete;
       read = v_read;
       retention_policy_days = v_retention_policy_days;
       version = v_version;
       write = v_write;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_write in
         ("write", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_retention_policy_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_policy_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read in
         ("read", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_delete in
         ("delete", arg) :: bnds
       in
       `Assoc bnds
    : queue_properties__logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_properties__logging

[@@@deriving.end]

type queue_properties__minute_metrics = {
  enabled : bool prop;
  include_apis : bool prop option; [@option]
  retention_policy_days : float prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_properties__minute_metrics) -> ()

let yojson_of_queue_properties__minute_metrics =
  (function
   | {
       enabled = v_enabled;
       include_apis = v_include_apis;
       retention_policy_days = v_retention_policy_days;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_retention_policy_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_policy_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_apis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_apis", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : queue_properties__minute_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_properties__minute_metrics

[@@@deriving.end]

type queue_properties = {
  cors_rule : queue_properties__cors_rule list;
  hour_metrics : queue_properties__hour_metrics list;
  logging : queue_properties__logging list;
  minute_metrics : queue_properties__minute_metrics list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_properties) -> ()

let yojson_of_queue_properties =
  (function
   | {
       cors_rule = v_cors_rule;
       hour_metrics = v_hour_metrics;
       logging = v_logging;
       minute_metrics = v_minute_metrics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_properties__minute_metrics
             v_minute_metrics
         in
         ("minute_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_properties__logging
             v_logging
         in
         ("logging", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_properties__hour_metrics
             v_hour_metrics
         in
         ("hour_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_properties__cors_rule
             v_cors_rule
         in
         ("cors_rule", arg) :: bnds
       in
       `Assoc bnds
    : queue_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_properties

[@@@deriving.end]

type routing = {
  choice : string prop option; [@option]
  publish_internet_endpoints : bool prop option; [@option]
  publish_microsoft_endpoints : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing) -> ()

let yojson_of_routing =
  (function
   | {
       choice = v_choice;
       publish_internet_endpoints = v_publish_internet_endpoints;
       publish_microsoft_endpoints = v_publish_microsoft_endpoints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_publish_microsoft_endpoints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish_microsoft_endpoints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publish_internet_endpoints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish_internet_endpoints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_choice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "choice", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing

[@@@deriving.end]

type sas_policy = {
  expiration_action : string prop option; [@option]
  expiration_period : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sas_policy) -> ()

let yojson_of_sas_policy =
  (function
   | {
       expiration_action = v_expiration_action;
       expiration_period = v_expiration_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_period
         in
         ("expiration_period", arg) :: bnds
       in
       let bnds =
         match v_expiration_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sas_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sas_policy

[@@@deriving.end]

type share_properties__cors_rule = {
  allowed_headers : string prop list;
  allowed_methods : string prop list;
  allowed_origins : string prop list;
  exposed_headers : string prop list;
  max_age_in_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_properties__cors_rule) -> ()

let yojson_of_share_properties__cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       exposed_headers = v_exposed_headers;
       max_age_in_seconds = v_max_age_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_age_in_seconds
         in
         ("max_age_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_exposed_headers
         in
         ("exposed_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_methods
         in
         ("allowed_methods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_headers
         in
         ("allowed_headers", arg) :: bnds
       in
       `Assoc bnds
    : share_properties__cors_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_properties__cors_rule

[@@@deriving.end]

type share_properties__retention_policy = {
  days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_properties__retention_policy) -> ()

let yojson_of_share_properties__retention_policy =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : share_properties__retention_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_properties__retention_policy

[@@@deriving.end]

type share_properties__smb = {
  authentication_types : string prop list option; [@option]
  channel_encryption_type : string prop list option; [@option]
  kerberos_ticket_encryption_type : string prop list option;
      [@option]
  multichannel_enabled : bool prop option; [@option]
  versions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_properties__smb) -> ()

let yojson_of_share_properties__smb =
  (function
   | {
       authentication_types = v_authentication_types;
       channel_encryption_type = v_channel_encryption_type;
       kerberos_ticket_encryption_type =
         v_kerberos_ticket_encryption_type;
       multichannel_enabled = v_multichannel_enabled;
       versions = v_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multichannel_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multichannel_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_ticket_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "kerberos_ticket_encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channel_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "channel_encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authentication_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : share_properties__smb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_properties__smb

[@@@deriving.end]

type share_properties = {
  cors_rule : share_properties__cors_rule list;
  retention_policy : share_properties__retention_policy list;
  smb : share_properties__smb list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_properties) -> ()

let yojson_of_share_properties =
  (function
   | {
       cors_rule = v_cors_rule;
       retention_policy = v_retention_policy;
       smb = v_smb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_share_properties__smb v_smb
         in
         ("smb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_share_properties__retention_policy
             v_retention_policy
         in
         ("retention_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_share_properties__cors_rule
             v_cors_rule
         in
         ("cors_rule", arg) :: bnds
       in
       `Assoc bnds
    : share_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_properties

[@@@deriving.end]

type static_website = {
  error_404_document : string prop option; [@option]
  index_document : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : static_website) -> ()

let yojson_of_static_website =
  (function
   | {
       error_404_document = v_error_404_document;
       index_document = v_index_document;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_index_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_document", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_404_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_404_document", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : static_website -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_static_website

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

type azurerm_storage_account = {
  access_tier : string prop option; [@option]
  account_kind : string prop option; [@option]
  account_replication_type : string prop;
  account_tier : string prop;
  allow_nested_items_to_be_public : bool prop option; [@option]
  allowed_copy_scope : string prop option; [@option]
  cross_tenant_replication_enabled : bool prop option; [@option]
  default_to_oauth_authentication : bool prop option; [@option]
  edge_zone : string prop option; [@option]
  enable_https_traffic_only : bool prop option; [@option]
  id : string prop option; [@option]
  infrastructure_encryption_enabled : bool prop option; [@option]
  is_hns_enabled : bool prop option; [@option]
  large_file_share_enabled : bool prop option; [@option]
  local_user_enabled : bool prop option; [@option]
  location : string prop;
  min_tls_version : string prop option; [@option]
  name : string prop;
  nfsv3_enabled : bool prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  queue_encryption_key_type : string prop option; [@option]
  resource_group_name : string prop;
  sftp_enabled : bool prop option; [@option]
  shared_access_key_enabled : bool prop option; [@option]
  table_encryption_key_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  azure_files_authentication : azure_files_authentication list;
  blob_properties : blob_properties list;
  custom_domain : custom_domain list;
  customer_managed_key : customer_managed_key list;
  identity : identity list;
  immutability_policy : immutability_policy list;
  network_rules : network_rules list;
  queue_properties : queue_properties list;
  routing : routing list;
  sas_policy : sas_policy list;
  share_properties : share_properties list;
  static_website : static_website list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account) -> ()

let yojson_of_azurerm_storage_account =
  (function
   | {
       access_tier = v_access_tier;
       account_kind = v_account_kind;
       account_replication_type = v_account_replication_type;
       account_tier = v_account_tier;
       allow_nested_items_to_be_public =
         v_allow_nested_items_to_be_public;
       allowed_copy_scope = v_allowed_copy_scope;
       cross_tenant_replication_enabled =
         v_cross_tenant_replication_enabled;
       default_to_oauth_authentication =
         v_default_to_oauth_authentication;
       edge_zone = v_edge_zone;
       enable_https_traffic_only = v_enable_https_traffic_only;
       id = v_id;
       infrastructure_encryption_enabled =
         v_infrastructure_encryption_enabled;
       is_hns_enabled = v_is_hns_enabled;
       large_file_share_enabled = v_large_file_share_enabled;
       local_user_enabled = v_local_user_enabled;
       location = v_location;
       min_tls_version = v_min_tls_version;
       name = v_name;
       nfsv3_enabled = v_nfsv3_enabled;
       public_network_access_enabled =
         v_public_network_access_enabled;
       queue_encryption_key_type = v_queue_encryption_key_type;
       resource_group_name = v_resource_group_name;
       sftp_enabled = v_sftp_enabled;
       shared_access_key_enabled = v_shared_access_key_enabled;
       table_encryption_key_type = v_table_encryption_key_type;
       tags = v_tags;
       azure_files_authentication = v_azure_files_authentication;
       blob_properties = v_blob_properties;
       custom_domain = v_custom_domain;
       customer_managed_key = v_customer_managed_key;
       identity = v_identity;
       immutability_policy = v_immutability_policy;
       network_rules = v_network_rules;
       queue_properties = v_queue_properties;
       routing = v_routing;
       sas_policy = v_sas_policy;
       share_properties = v_share_properties;
       static_website = v_static_website;
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
         let arg =
           yojson_of_list yojson_of_static_website v_static_website
         in
         ("static_website", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_share_properties
             v_share_properties
         in
         ("share_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sas_policy v_sas_policy
         in
         ("sas_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_routing v_routing in
         ("routing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_properties
             v_queue_properties
         in
         ("queue_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_rules v_network_rules
         in
         ("network_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_immutability_policy
             v_immutability_policy
         in
         ("immutability_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_customer_managed_key
             v_customer_managed_key
         in
         ("customer_managed_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_domain v_custom_domain
         in
         ("custom_domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_blob_properties v_blob_properties
         in
         ("blob_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azure_files_authentication
             v_azure_files_authentication
         in
         ("azure_files_authentication", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_table_encryption_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_encryption_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_access_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shared_access_key_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sftp_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sftp_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_queue_encryption_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queue_encryption_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nfsv3_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nfsv3_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_user_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_user_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_large_file_share_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "large_file_share_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_hns_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_hns_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infrastructure_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "infrastructure_encryption_enabled", arg in
             bnd :: bnds
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
         match v_enable_https_traffic_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_https_traffic_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_to_oauth_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_to_oauth_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_tenant_replication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cross_tenant_replication_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_copy_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allowed_copy_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_nested_items_to_be_public with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_nested_items_to_be_public", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_tier in
         ("account_tier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_account_replication_type
         in
         ("account_replication_type", arg) :: bnds
       in
       let bnds =
         match v_account_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_tier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account

[@@@deriving.end]

let azure_files_authentication__active_directory ?domain_sid
    ?forest_name ?netbios_domain_name ?storage_sid ~domain_guid
    ~domain_name () : azure_files_authentication__active_directory =
  {
    domain_guid;
    domain_name;
    domain_sid;
    forest_name;
    netbios_domain_name;
    storage_sid;
  }

let azure_files_authentication ~directory_type ~active_directory () :
    azure_files_authentication =
  { directory_type; active_directory }

let blob_properties__container_delete_retention_policy ?days () :
    blob_properties__container_delete_retention_policy =
  { days }

let blob_properties__cors_rule ~allowed_headers ~allowed_methods
    ~allowed_origins ~exposed_headers ~max_age_in_seconds () :
    blob_properties__cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    exposed_headers;
    max_age_in_seconds;
  }

let blob_properties__delete_retention_policy ?days () :
    blob_properties__delete_retention_policy =
  { days }

let blob_properties__restore_policy ~days () :
    blob_properties__restore_policy =
  { days }

let blob_properties ?change_feed_enabled
    ?change_feed_retention_in_days ?default_service_version
    ?last_access_time_enabled ?versioning_enabled
    ~container_delete_retention_policy ~cors_rule
    ~delete_retention_policy ~restore_policy () : blob_properties =
  {
    change_feed_enabled;
    change_feed_retention_in_days;
    default_service_version;
    last_access_time_enabled;
    versioning_enabled;
    container_delete_retention_policy;
    cors_rule;
    delete_retention_policy;
    restore_policy;
  }

let custom_domain ?use_subdomain ~name () : custom_domain =
  { name; use_subdomain }

let customer_managed_key ~key_vault_key_id ~user_assigned_identity_id
    () : customer_managed_key =
  { key_vault_key_id; user_assigned_identity_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let immutability_policy ~allow_protected_append_writes
    ~period_since_creation_in_days ~state () : immutability_policy =
  {
    allow_protected_append_writes;
    period_since_creation_in_days;
    state;
  }

let network_rules__private_link_access ?endpoint_tenant_id
    ~endpoint_resource_id () : network_rules__private_link_access =
  { endpoint_resource_id; endpoint_tenant_id }

let network_rules ?bypass ?ip_rules ?virtual_network_subnet_ids
    ~default_action ~private_link_access () : network_rules =
  {
    bypass;
    default_action;
    ip_rules;
    virtual_network_subnet_ids;
    private_link_access;
  }

let queue_properties__cors_rule ~allowed_headers ~allowed_methods
    ~allowed_origins ~exposed_headers ~max_age_in_seconds () :
    queue_properties__cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    exposed_headers;
    max_age_in_seconds;
  }

let queue_properties__hour_metrics ?include_apis
    ?retention_policy_days ~enabled ~version () :
    queue_properties__hour_metrics =
  { enabled; include_apis; retention_policy_days; version }

let queue_properties__logging ?retention_policy_days ~delete ~read
    ~version ~write () : queue_properties__logging =
  { delete; read; retention_policy_days; version; write }

let queue_properties__minute_metrics ?include_apis
    ?retention_policy_days ~enabled ~version () :
    queue_properties__minute_metrics =
  { enabled; include_apis; retention_policy_days; version }

let queue_properties ~cors_rule ~hour_metrics ~logging
    ~minute_metrics () : queue_properties =
  { cors_rule; hour_metrics; logging; minute_metrics }

let routing ?choice ?publish_internet_endpoints
    ?publish_microsoft_endpoints () : routing =
  { choice; publish_internet_endpoints; publish_microsoft_endpoints }

let sas_policy ?expiration_action ~expiration_period () : sas_policy
    =
  { expiration_action; expiration_period }

let share_properties__cors_rule ~allowed_headers ~allowed_methods
    ~allowed_origins ~exposed_headers ~max_age_in_seconds () :
    share_properties__cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    exposed_headers;
    max_age_in_seconds;
  }

let share_properties__retention_policy ?days () :
    share_properties__retention_policy =
  { days }

let share_properties__smb ?authentication_types
    ?channel_encryption_type ?kerberos_ticket_encryption_type
    ?multichannel_enabled ?versions () : share_properties__smb =
  {
    authentication_types;
    channel_encryption_type;
    kerberos_ticket_encryption_type;
    multichannel_enabled;
    versions;
  }

let share_properties ~cors_rule ~retention_policy ~smb () :
    share_properties =
  { cors_rule; retention_policy; smb }

let static_website ?error_404_document ?index_document () :
    static_website =
  { error_404_document; index_document }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account ?access_tier ?account_kind
    ?allow_nested_items_to_be_public ?allowed_copy_scope
    ?cross_tenant_replication_enabled
    ?default_to_oauth_authentication ?edge_zone
    ?enable_https_traffic_only ?id ?infrastructure_encryption_enabled
    ?is_hns_enabled ?large_file_share_enabled ?local_user_enabled
    ?min_tls_version ?nfsv3_enabled ?public_network_access_enabled
    ?queue_encryption_key_type ?sftp_enabled
    ?shared_access_key_enabled ?table_encryption_key_type ?tags
    ?timeouts ~account_replication_type ~account_tier ~location ~name
    ~resource_group_name ~azure_files_authentication ~blob_properties
    ~custom_domain ~customer_managed_key ~identity
    ~immutability_policy ~network_rules ~queue_properties ~routing
    ~sas_policy ~share_properties ~static_website () :
    azurerm_storage_account =
  {
    access_tier;
    account_kind;
    account_replication_type;
    account_tier;
    allow_nested_items_to_be_public;
    allowed_copy_scope;
    cross_tenant_replication_enabled;
    default_to_oauth_authentication;
    edge_zone;
    enable_https_traffic_only;
    id;
    infrastructure_encryption_enabled;
    is_hns_enabled;
    large_file_share_enabled;
    local_user_enabled;
    location;
    min_tls_version;
    name;
    nfsv3_enabled;
    public_network_access_enabled;
    queue_encryption_key_type;
    resource_group_name;
    sftp_enabled;
    shared_access_key_enabled;
    table_encryption_key_type;
    tags;
    azure_files_authentication;
    blob_properties;
    custom_domain;
    customer_managed_key;
    identity;
    immutability_policy;
    network_rules;
    queue_properties;
    routing;
    sas_policy;
    share_properties;
    static_website;
    timeouts;
  }

type t = {
  access_tier : string prop;
  account_kind : string prop;
  account_replication_type : string prop;
  account_tier : string prop;
  allow_nested_items_to_be_public : bool prop;
  allowed_copy_scope : string prop;
  cross_tenant_replication_enabled : bool prop;
  default_to_oauth_authentication : bool prop;
  edge_zone : string prop;
  enable_https_traffic_only : bool prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  is_hns_enabled : bool prop;
  large_file_share_enabled : bool prop;
  local_user_enabled : bool prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  nfsv3_enabled : bool prop;
  primary_access_key : string prop;
  primary_blob_connection_string : string prop;
  primary_blob_endpoint : string prop;
  primary_blob_host : string prop;
  primary_blob_internet_endpoint : string prop;
  primary_blob_internet_host : string prop;
  primary_blob_microsoft_endpoint : string prop;
  primary_blob_microsoft_host : string prop;
  primary_connection_string : string prop;
  primary_dfs_endpoint : string prop;
  primary_dfs_host : string prop;
  primary_dfs_internet_endpoint : string prop;
  primary_dfs_internet_host : string prop;
  primary_dfs_microsoft_endpoint : string prop;
  primary_dfs_microsoft_host : string prop;
  primary_file_endpoint : string prop;
  primary_file_host : string prop;
  primary_file_internet_endpoint : string prop;
  primary_file_internet_host : string prop;
  primary_file_microsoft_endpoint : string prop;
  primary_file_microsoft_host : string prop;
  primary_location : string prop;
  primary_queue_endpoint : string prop;
  primary_queue_host : string prop;
  primary_queue_microsoft_endpoint : string prop;
  primary_queue_microsoft_host : string prop;
  primary_table_endpoint : string prop;
  primary_table_host : string prop;
  primary_table_microsoft_endpoint : string prop;
  primary_table_microsoft_host : string prop;
  primary_web_endpoint : string prop;
  primary_web_host : string prop;
  primary_web_internet_endpoint : string prop;
  primary_web_internet_host : string prop;
  primary_web_microsoft_endpoint : string prop;
  primary_web_microsoft_host : string prop;
  public_network_access_enabled : bool prop;
  queue_encryption_key_type : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_blob_connection_string : string prop;
  secondary_blob_endpoint : string prop;
  secondary_blob_host : string prop;
  secondary_blob_internet_endpoint : string prop;
  secondary_blob_internet_host : string prop;
  secondary_blob_microsoft_endpoint : string prop;
  secondary_blob_microsoft_host : string prop;
  secondary_connection_string : string prop;
  secondary_dfs_endpoint : string prop;
  secondary_dfs_host : string prop;
  secondary_dfs_internet_endpoint : string prop;
  secondary_dfs_internet_host : string prop;
  secondary_dfs_microsoft_endpoint : string prop;
  secondary_dfs_microsoft_host : string prop;
  secondary_file_endpoint : string prop;
  secondary_file_host : string prop;
  secondary_file_internet_endpoint : string prop;
  secondary_file_internet_host : string prop;
  secondary_file_microsoft_endpoint : string prop;
  secondary_file_microsoft_host : string prop;
  secondary_location : string prop;
  secondary_queue_endpoint : string prop;
  secondary_queue_host : string prop;
  secondary_queue_microsoft_endpoint : string prop;
  secondary_queue_microsoft_host : string prop;
  secondary_table_endpoint : string prop;
  secondary_table_host : string prop;
  secondary_table_microsoft_endpoint : string prop;
  secondary_table_microsoft_host : string prop;
  secondary_web_endpoint : string prop;
  secondary_web_host : string prop;
  secondary_web_internet_endpoint : string prop;
  secondary_web_internet_host : string prop;
  secondary_web_microsoft_endpoint : string prop;
  secondary_web_microsoft_host : string prop;
  sftp_enabled : bool prop;
  shared_access_key_enabled : bool prop;
  table_encryption_key_type : string prop;
  tags : (string * string) list prop;
}

let make ?access_tier ?account_kind ?allow_nested_items_to_be_public
    ?allowed_copy_scope ?cross_tenant_replication_enabled
    ?default_to_oauth_authentication ?edge_zone
    ?enable_https_traffic_only ?id ?infrastructure_encryption_enabled
    ?is_hns_enabled ?large_file_share_enabled ?local_user_enabled
    ?min_tls_version ?nfsv3_enabled ?public_network_access_enabled
    ?queue_encryption_key_type ?sftp_enabled
    ?shared_access_key_enabled ?table_encryption_key_type ?tags
    ?timeouts ~account_replication_type ~account_tier ~location ~name
    ~resource_group_name ~azure_files_authentication ~blob_properties
    ~custom_domain ~customer_managed_key ~identity
    ~immutability_policy ~network_rules ~queue_properties ~routing
    ~sas_policy ~share_properties ~static_website __id =
  let __type = "azurerm_storage_account" in
  let __attrs =
    ({
       access_tier = Prop.computed __type __id "access_tier";
       account_kind = Prop.computed __type __id "account_kind";
       account_replication_type =
         Prop.computed __type __id "account_replication_type";
       account_tier = Prop.computed __type __id "account_tier";
       allow_nested_items_to_be_public =
         Prop.computed __type __id "allow_nested_items_to_be_public";
       allowed_copy_scope =
         Prop.computed __type __id "allowed_copy_scope";
       cross_tenant_replication_enabled =
         Prop.computed __type __id "cross_tenant_replication_enabled";
       default_to_oauth_authentication =
         Prop.computed __type __id "default_to_oauth_authentication";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_https_traffic_only =
         Prop.computed __type __id "enable_https_traffic_only";
       id = Prop.computed __type __id "id";
       infrastructure_encryption_enabled =
         Prop.computed __type __id
           "infrastructure_encryption_enabled";
       is_hns_enabled = Prop.computed __type __id "is_hns_enabled";
       large_file_share_enabled =
         Prop.computed __type __id "large_file_share_enabled";
       local_user_enabled =
         Prop.computed __type __id "local_user_enabled";
       location = Prop.computed __type __id "location";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       nfsv3_enabled = Prop.computed __type __id "nfsv3_enabled";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       primary_blob_connection_string =
         Prop.computed __type __id "primary_blob_connection_string";
       primary_blob_endpoint =
         Prop.computed __type __id "primary_blob_endpoint";
       primary_blob_host =
         Prop.computed __type __id "primary_blob_host";
       primary_blob_internet_endpoint =
         Prop.computed __type __id "primary_blob_internet_endpoint";
       primary_blob_internet_host =
         Prop.computed __type __id "primary_blob_internet_host";
       primary_blob_microsoft_endpoint =
         Prop.computed __type __id "primary_blob_microsoft_endpoint";
       primary_blob_microsoft_host =
         Prop.computed __type __id "primary_blob_microsoft_host";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_dfs_endpoint =
         Prop.computed __type __id "primary_dfs_endpoint";
       primary_dfs_host =
         Prop.computed __type __id "primary_dfs_host";
       primary_dfs_internet_endpoint =
         Prop.computed __type __id "primary_dfs_internet_endpoint";
       primary_dfs_internet_host =
         Prop.computed __type __id "primary_dfs_internet_host";
       primary_dfs_microsoft_endpoint =
         Prop.computed __type __id "primary_dfs_microsoft_endpoint";
       primary_dfs_microsoft_host =
         Prop.computed __type __id "primary_dfs_microsoft_host";
       primary_file_endpoint =
         Prop.computed __type __id "primary_file_endpoint";
       primary_file_host =
         Prop.computed __type __id "primary_file_host";
       primary_file_internet_endpoint =
         Prop.computed __type __id "primary_file_internet_endpoint";
       primary_file_internet_host =
         Prop.computed __type __id "primary_file_internet_host";
       primary_file_microsoft_endpoint =
         Prop.computed __type __id "primary_file_microsoft_endpoint";
       primary_file_microsoft_host =
         Prop.computed __type __id "primary_file_microsoft_host";
       primary_location =
         Prop.computed __type __id "primary_location";
       primary_queue_endpoint =
         Prop.computed __type __id "primary_queue_endpoint";
       primary_queue_host =
         Prop.computed __type __id "primary_queue_host";
       primary_queue_microsoft_endpoint =
         Prop.computed __type __id "primary_queue_microsoft_endpoint";
       primary_queue_microsoft_host =
         Prop.computed __type __id "primary_queue_microsoft_host";
       primary_table_endpoint =
         Prop.computed __type __id "primary_table_endpoint";
       primary_table_host =
         Prop.computed __type __id "primary_table_host";
       primary_table_microsoft_endpoint =
         Prop.computed __type __id "primary_table_microsoft_endpoint";
       primary_table_microsoft_host =
         Prop.computed __type __id "primary_table_microsoft_host";
       primary_web_endpoint =
         Prop.computed __type __id "primary_web_endpoint";
       primary_web_host =
         Prop.computed __type __id "primary_web_host";
       primary_web_internet_endpoint =
         Prop.computed __type __id "primary_web_internet_endpoint";
       primary_web_internet_host =
         Prop.computed __type __id "primary_web_internet_host";
       primary_web_microsoft_endpoint =
         Prop.computed __type __id "primary_web_microsoft_endpoint";
       primary_web_microsoft_host =
         Prop.computed __type __id "primary_web_microsoft_host";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       queue_encryption_key_type =
         Prop.computed __type __id "queue_encryption_key_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       secondary_blob_connection_string =
         Prop.computed __type __id "secondary_blob_connection_string";
       secondary_blob_endpoint =
         Prop.computed __type __id "secondary_blob_endpoint";
       secondary_blob_host =
         Prop.computed __type __id "secondary_blob_host";
       secondary_blob_internet_endpoint =
         Prop.computed __type __id "secondary_blob_internet_endpoint";
       secondary_blob_internet_host =
         Prop.computed __type __id "secondary_blob_internet_host";
       secondary_blob_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_blob_microsoft_endpoint";
       secondary_blob_microsoft_host =
         Prop.computed __type __id "secondary_blob_microsoft_host";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_dfs_endpoint =
         Prop.computed __type __id "secondary_dfs_endpoint";
       secondary_dfs_host =
         Prop.computed __type __id "secondary_dfs_host";
       secondary_dfs_internet_endpoint =
         Prop.computed __type __id "secondary_dfs_internet_endpoint";
       secondary_dfs_internet_host =
         Prop.computed __type __id "secondary_dfs_internet_host";
       secondary_dfs_microsoft_endpoint =
         Prop.computed __type __id "secondary_dfs_microsoft_endpoint";
       secondary_dfs_microsoft_host =
         Prop.computed __type __id "secondary_dfs_microsoft_host";
       secondary_file_endpoint =
         Prop.computed __type __id "secondary_file_endpoint";
       secondary_file_host =
         Prop.computed __type __id "secondary_file_host";
       secondary_file_internet_endpoint =
         Prop.computed __type __id "secondary_file_internet_endpoint";
       secondary_file_internet_host =
         Prop.computed __type __id "secondary_file_internet_host";
       secondary_file_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_file_microsoft_endpoint";
       secondary_file_microsoft_host =
         Prop.computed __type __id "secondary_file_microsoft_host";
       secondary_location =
         Prop.computed __type __id "secondary_location";
       secondary_queue_endpoint =
         Prop.computed __type __id "secondary_queue_endpoint";
       secondary_queue_host =
         Prop.computed __type __id "secondary_queue_host";
       secondary_queue_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_queue_microsoft_endpoint";
       secondary_queue_microsoft_host =
         Prop.computed __type __id "secondary_queue_microsoft_host";
       secondary_table_endpoint =
         Prop.computed __type __id "secondary_table_endpoint";
       secondary_table_host =
         Prop.computed __type __id "secondary_table_host";
       secondary_table_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_table_microsoft_endpoint";
       secondary_table_microsoft_host =
         Prop.computed __type __id "secondary_table_microsoft_host";
       secondary_web_endpoint =
         Prop.computed __type __id "secondary_web_endpoint";
       secondary_web_host =
         Prop.computed __type __id "secondary_web_host";
       secondary_web_internet_endpoint =
         Prop.computed __type __id "secondary_web_internet_endpoint";
       secondary_web_internet_host =
         Prop.computed __type __id "secondary_web_internet_host";
       secondary_web_microsoft_endpoint =
         Prop.computed __type __id "secondary_web_microsoft_endpoint";
       secondary_web_microsoft_host =
         Prop.computed __type __id "secondary_web_microsoft_host";
       sftp_enabled = Prop.computed __type __id "sftp_enabled";
       shared_access_key_enabled =
         Prop.computed __type __id "shared_access_key_enabled";
       table_encryption_key_type =
         Prop.computed __type __id "table_encryption_key_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account
        (azurerm_storage_account ?access_tier ?account_kind
           ?allow_nested_items_to_be_public ?allowed_copy_scope
           ?cross_tenant_replication_enabled
           ?default_to_oauth_authentication ?edge_zone
           ?enable_https_traffic_only ?id
           ?infrastructure_encryption_enabled ?is_hns_enabled
           ?large_file_share_enabled ?local_user_enabled
           ?min_tls_version ?nfsv3_enabled
           ?public_network_access_enabled ?queue_encryption_key_type
           ?sftp_enabled ?shared_access_key_enabled
           ?table_encryption_key_type ?tags ?timeouts
           ~account_replication_type ~account_tier ~location ~name
           ~resource_group_name ~azure_files_authentication
           ~blob_properties ~custom_domain ~customer_managed_key
           ~identity ~immutability_policy ~network_rules
           ~queue_properties ~routing ~sas_policy ~share_properties
           ~static_website ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?account_kind
    ?allow_nested_items_to_be_public ?allowed_copy_scope
    ?cross_tenant_replication_enabled
    ?default_to_oauth_authentication ?edge_zone
    ?enable_https_traffic_only ?id ?infrastructure_encryption_enabled
    ?is_hns_enabled ?large_file_share_enabled ?local_user_enabled
    ?min_tls_version ?nfsv3_enabled ?public_network_access_enabled
    ?queue_encryption_key_type ?sftp_enabled
    ?shared_access_key_enabled ?table_encryption_key_type ?tags
    ?timeouts ~account_replication_type ~account_tier ~location ~name
    ~resource_group_name ~azure_files_authentication ~blob_properties
    ~custom_domain ~customer_managed_key ~identity
    ~immutability_policy ~network_rules ~queue_properties ~routing
    ~sas_policy ~share_properties ~static_website __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?account_kind ?allow_nested_items_to_be_public
      ?allowed_copy_scope ?cross_tenant_replication_enabled
      ?default_to_oauth_authentication ?edge_zone
      ?enable_https_traffic_only ?id
      ?infrastructure_encryption_enabled ?is_hns_enabled
      ?large_file_share_enabled ?local_user_enabled ?min_tls_version
      ?nfsv3_enabled ?public_network_access_enabled
      ?queue_encryption_key_type ?sftp_enabled
      ?shared_access_key_enabled ?table_encryption_key_type ?tags
      ?timeouts ~account_replication_type ~account_tier ~location
      ~name ~resource_group_name ~azure_files_authentication
      ~blob_properties ~custom_domain ~customer_managed_key ~identity
      ~immutability_policy ~network_rules ~queue_properties ~routing
      ~sas_policy ~share_properties ~static_website __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

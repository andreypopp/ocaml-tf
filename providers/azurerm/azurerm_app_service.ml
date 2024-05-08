(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_settings__active_directory = {
  allowed_audiences : string prop list option; [@option]
  client_id : string prop;
  client_secret : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__active_directory) -> ()

let yojson_of_auth_settings__active_directory =
  (function
   | {
       allowed_audiences = v_allowed_audiences;
       client_id = v_client_id;
       client_secret = v_client_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_allowed_audiences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_audiences", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings__active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__active_directory

[@@@deriving.end]

type auth_settings__facebook = {
  app_id : string prop;
  app_secret : string prop;
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__facebook) -> ()

let yojson_of_auth_settings__facebook =
  (function
   | {
       app_id = v_app_id;
       app_secret = v_app_secret;
       oauth_scopes = v_oauth_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_secret in
         ("app_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__facebook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__facebook

[@@@deriving.end]

type auth_settings__google = {
  client_id : string prop;
  client_secret : string prop;
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__google) -> ()

let yojson_of_auth_settings__google =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_scopes = v_oauth_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__google -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__google

[@@@deriving.end]

type auth_settings__microsoft = {
  client_id : string prop;
  client_secret : string prop;
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__microsoft) -> ()

let yojson_of_auth_settings__microsoft =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_scopes = v_oauth_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__microsoft -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__microsoft

[@@@deriving.end]

type auth_settings__twitter = {
  consumer_key : string prop;
  consumer_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__twitter) -> ()

let yojson_of_auth_settings__twitter =
  (function
   | {
       consumer_key = v_consumer_key;
       consumer_secret = v_consumer_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_secret
         in
         ("consumer_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_consumer_key in
         ("consumer_key", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__twitter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__twitter

[@@@deriving.end]

type auth_settings = {
  additional_login_params : (string * string prop) list option;
      [@option]
  allowed_external_redirect_urls : string prop list option; [@option]
  default_provider : string prop option; [@option]
  enabled : bool prop;
  issuer : string prop option; [@option]
  runtime_version : string prop option; [@option]
  token_refresh_extension_hours : float prop option; [@option]
  token_store_enabled : bool prop option; [@option]
  unauthenticated_client_action : string prop option; [@option]
  active_directory : auth_settings__active_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  facebook : auth_settings__facebook list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google : auth_settings__google list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  microsoft : auth_settings__microsoft list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  twitter : auth_settings__twitter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings) -> ()

let yojson_of_auth_settings =
  (function
   | {
       additional_login_params = v_additional_login_params;
       allowed_external_redirect_urls =
         v_allowed_external_redirect_urls;
       default_provider = v_default_provider;
       enabled = v_enabled;
       issuer = v_issuer;
       runtime_version = v_runtime_version;
       token_refresh_extension_hours =
         v_token_refresh_extension_hours;
       token_store_enabled = v_token_store_enabled;
       unauthenticated_client_action =
         v_unauthenticated_client_action;
       active_directory = v_active_directory;
       facebook = v_facebook;
       google = v_google;
       microsoft = v_microsoft;
       twitter = v_twitter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_twitter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__twitter)
               v_twitter
           in
           let bnd = "twitter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_microsoft then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__microsoft)
               v_microsoft
           in
           let bnd = "microsoft", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_google then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__google)
               v_google
           in
           let bnd = "google", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_facebook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__facebook)
               v_facebook
           in
           let bnd = "facebook", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_directory then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auth_settings__active_directory)
               v_active_directory
           in
           let bnd = "active_directory", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unauthenticated_client_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unauthenticated_client_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_store_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "token_store_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_refresh_extension_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "token_refresh_extension_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_default_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_external_redirect_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_external_redirect_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_login_params with
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
             let bnd = "additional_login_params", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings

[@@@deriving.end]

type backup__schedule = {
  frequency_interval : float prop;
  frequency_unit : string prop;
  keep_at_least_one_backup : bool prop option; [@option]
  retention_period_in_days : float prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__schedule) -> ()

let yojson_of_backup__schedule =
  (function
   | {
       frequency_interval = v_frequency_interval;
       frequency_unit = v_frequency_unit;
       keep_at_least_one_backup = v_keep_at_least_one_backup;
       retention_period_in_days = v_retention_period_in_days;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_period_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_at_least_one_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "keep_at_least_one_backup", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frequency_unit
         in
         ("frequency_unit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_frequency_interval
         in
         ("frequency_interval", arg) :: bnds
       in
       `Assoc bnds
    : backup__schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__schedule

[@@@deriving.end]

type backup = {
  enabled : bool prop option; [@option]
  name : string prop;
  storage_account_url : string prop;
  schedule : backup__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup) -> ()

let yojson_of_backup =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       storage_account_url = v_storage_account_url;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup__schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_url
         in
         ("storage_account_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup

[@@@deriving.end]

type connection_string = {
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_string) -> ()

let yojson_of_connection_string =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : connection_string -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_string

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

type logs__application_logs__azure_blob_storage = {
  level : string prop;
  retention_in_days : float prop;
  sas_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__application_logs__azure_blob_storage) -> ()

let yojson_of_logs__application_logs__azure_blob_storage =
  (function
   | {
       level = v_level;
       retention_in_days = v_retention_in_days;
       sas_url = v_sas_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_url in
         ("sas_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_days
         in
         ("retention_in_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       `Assoc bnds
    : logs__application_logs__azure_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__application_logs__azure_blob_storage

[@@@deriving.end]

type logs__application_logs = {
  file_system_level : string prop option; [@option]
  azure_blob_storage :
    logs__application_logs__azure_blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__application_logs) -> ()

let yojson_of_logs__application_logs =
  (function
   | {
       file_system_level = v_file_system_level;
       azure_blob_storage = v_azure_blob_storage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_blob_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logs__application_logs__azure_blob_storage)
               v_azure_blob_storage
           in
           let bnd = "azure_blob_storage", arg in
           bnd :: bnds
       in
       let bnds =
         match v_file_system_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs__application_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__application_logs

[@@@deriving.end]

type logs__http_logs__azure_blob_storage = {
  retention_in_days : float prop;
  sas_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__http_logs__azure_blob_storage) -> ()

let yojson_of_logs__http_logs__azure_blob_storage =
  (function
   | { retention_in_days = v_retention_in_days; sas_url = v_sas_url }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_url in
         ("sas_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_days
         in
         ("retention_in_days", arg) :: bnds
       in
       `Assoc bnds
    : logs__http_logs__azure_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__http_logs__azure_blob_storage

[@@@deriving.end]

type logs__http_logs__file_system = {
  retention_in_days : float prop;
  retention_in_mb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__http_logs__file_system) -> ()

let yojson_of_logs__http_logs__file_system =
  (function
   | {
       retention_in_days = v_retention_in_days;
       retention_in_mb = v_retention_in_mb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_mb
         in
         ("retention_in_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_days
         in
         ("retention_in_days", arg) :: bnds
       in
       `Assoc bnds
    : logs__http_logs__file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__http_logs__file_system

[@@@deriving.end]

type logs__http_logs = {
  azure_blob_storage : logs__http_logs__azure_blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  file_system : logs__http_logs__file_system list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__http_logs) -> ()

let yojson_of_logs__http_logs =
  (function
   | {
       azure_blob_storage = v_azure_blob_storage;
       file_system = v_file_system;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_file_system then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs__http_logs__file_system)
               v_file_system
           in
           let bnd = "file_system", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_blob_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logs__http_logs__azure_blob_storage)
               v_azure_blob_storage
           in
           let bnd = "azure_blob_storage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logs__http_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__http_logs

[@@@deriving.end]

type logs = {
  detailed_error_messages_enabled : bool prop option; [@option]
  failed_request_tracing_enabled : bool prop option; [@option]
  application_logs : logs__application_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_logs : logs__http_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs) -> ()

let yojson_of_logs =
  (function
   | {
       detailed_error_messages_enabled =
         v_detailed_error_messages_enabled;
       failed_request_tracing_enabled =
         v_failed_request_tracing_enabled;
       application_logs = v_application_logs;
       http_logs = v_http_logs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_http_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs__http_logs) v_http_logs
           in
           let bnd = "http_logs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs__application_logs)
               v_application_logs
           in
           let bnd = "application_logs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_failed_request_tracing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failed_request_tracing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detailed_error_messages_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detailed_error_messages_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs

[@@@deriving.end]

type site_config__cors = {
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  support_credentials : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__cors) -> ()

let yojson_of_site_config__cors =
  (function
   | {
       allowed_origins = v_allowed_origins;
       support_credentials = v_support_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_support_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "support_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__cors

[@@@deriving.end]

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction__headers) -> ()

let yojson_of_site_config__ip_restriction__headers =
  (function
   | {
       x_azure_fdid = v_x_azure_fdid;
       x_fd_health_probe = v_x_fd_health_probe;
       x_forwarded_for = v_x_forwarded_for;
       x_forwarded_host = v_x_forwarded_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_azure_fdid then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_azure_fdid
           in
           let bnd = "x_azure_fdid", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction__headers

[@@@deriving.end]

type site_config__ip_restriction = {
  action : string prop;
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_address : string prop;
  name : string prop;
  priority : float prop;
  service_tag : string prop;
  virtual_network_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction) -> ()

let yojson_of_site_config__ip_restriction =
  (function
   | {
       action = v_action;
       headers = v_headers;
       ip_address = v_ip_address;
       name = v_name;
       priority = v_priority;
       service_tag = v_service_tag;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_subnet_id
         in
         ("virtual_network_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_tag in
         ("service_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__ip_restriction__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction

[@@@deriving.end]

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction__headers) -> ()

let yojson_of_site_config__scm_ip_restriction__headers =
  (function
   | {
       x_azure_fdid = v_x_azure_fdid;
       x_fd_health_probe = v_x_fd_health_probe;
       x_forwarded_for = v_x_forwarded_for;
       x_forwarded_host = v_x_forwarded_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_azure_fdid then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_azure_fdid
           in
           let bnd = "x_azure_fdid", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction__headers

[@@@deriving.end]

type site_config__scm_ip_restriction = {
  action : string prop;
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_address : string prop;
  name : string prop;
  priority : float prop;
  service_tag : string prop;
  virtual_network_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction) -> ()

let yojson_of_site_config__scm_ip_restriction =
  (function
   | {
       action = v_action;
       headers = v_headers;
       ip_address = v_ip_address;
       name = v_name;
       priority = v_priority;
       service_tag = v_service_tag;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_subnet_id
         in
         ("virtual_network_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_tag in
         ("service_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__scm_ip_restriction__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction

[@@@deriving.end]

type site_config = {
  acr_use_managed_identity_credentials : bool prop option; [@option]
  acr_user_managed_identity_client_id : string prop option; [@option]
  always_on : bool prop option; [@option]
  app_command_line : string prop option; [@option]
  auto_swap_slot_name : string prop option; [@option]
  default_documents : string prop list option; [@option]
  dotnet_framework_version : string prop option; [@option]
  ftps_state : string prop option; [@option]
  health_check_path : string prop option; [@option]
  http2_enabled : bool prop option; [@option]
  ip_restriction : site_config__ip_restriction list option; [@option]
  java_container : string prop option; [@option]
  java_container_version : string prop option; [@option]
  java_version : string prop option; [@option]
  linux_fx_version : string prop option; [@option]
  local_mysql_enabled : bool prop option; [@option]
  managed_pipeline_mode : string prop option; [@option]
  min_tls_version : string prop option; [@option]
  number_of_workers : float prop option; [@option]
  php_version : string prop option; [@option]
  python_version : string prop option; [@option]
  remote_debugging_enabled : bool prop option; [@option]
  remote_debugging_version : string prop option; [@option]
  scm_ip_restriction : site_config__scm_ip_restriction list option;
      [@option]
  scm_type : string prop option; [@option]
  scm_use_main_ip_restriction : bool prop option; [@option]
  use_32_bit_worker_process : bool prop option; [@option]
  vnet_route_all_enabled : bool prop option; [@option]
  websockets_enabled : bool prop option; [@option]
  windows_fx_version : string prop option; [@option]
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config) -> ()

let yojson_of_site_config =
  (function
   | {
       acr_use_managed_identity_credentials =
         v_acr_use_managed_identity_credentials;
       acr_user_managed_identity_client_id =
         v_acr_user_managed_identity_client_id;
       always_on = v_always_on;
       app_command_line = v_app_command_line;
       auto_swap_slot_name = v_auto_swap_slot_name;
       default_documents = v_default_documents;
       dotnet_framework_version = v_dotnet_framework_version;
       ftps_state = v_ftps_state;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction = v_ip_restriction;
       java_container = v_java_container;
       java_container_version = v_java_container_version;
       java_version = v_java_version;
       linux_fx_version = v_linux_fx_version;
       local_mysql_enabled = v_local_mysql_enabled;
       managed_pipeline_mode = v_managed_pipeline_mode;
       min_tls_version = v_min_tls_version;
       number_of_workers = v_number_of_workers;
       php_version = v_php_version;
       python_version = v_python_version;
       remote_debugging_enabled = v_remote_debugging_enabled;
       remote_debugging_version = v_remote_debugging_version;
       scm_ip_restriction = v_scm_ip_restriction;
       scm_type = v_scm_type;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker_process = v_use_32_bit_worker_process;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       windows_fx_version = v_windows_fx_version;
       cors = v_cors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__cors) v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_windows_fx_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "windows_fx_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_websockets_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "websockets_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vnet_route_all_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vnet_route_all_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_32_bit_worker_process with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_32_bit_worker_process", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_use_main_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scm_use_main_ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scm_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_site_config__scm_ip_restriction v
             in
             let bnd = "scm_ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_debugging_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_debugging_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_debugging_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remote_debugging_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_python_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "python_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_php_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "php_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_workers", arg in
             bnd :: bnds
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
         match v_managed_pipeline_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_pipeline_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_mysql_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_mysql_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linux_fx_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linux_fx_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_java_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "java_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_java_container_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "java_container_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_java_container with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "java_container", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_site_config__ip_restriction v
             in
             let bnd = "ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http2_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ftps_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ftps_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dotnet_framework_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dotnet_framework_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_documents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "default_documents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_swap_slot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_swap_slot_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_command_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_command_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_on", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acr_user_managed_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acr_user_managed_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acr_use_managed_identity_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "acr_use_managed_identity_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config

[@@@deriving.end]

type source_control = {
  branch : string prop option; [@option]
  manual_integration : bool prop option; [@option]
  repo_url : string prop option; [@option]
  rollback_enabled : bool prop option; [@option]
  use_mercurial : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_control) -> ()

let yojson_of_source_control =
  (function
   | {
       branch = v_branch;
       manual_integration = v_manual_integration;
       repo_url = v_repo_url;
       rollback_enabled = v_rollback_enabled;
       use_mercurial = v_use_mercurial;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_mercurial with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_mercurial", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rollback_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rollback_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repo_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manual_integration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manual_integration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_control

[@@@deriving.end]

type storage_account = {
  access_key : string prop;
  account_name : string prop;
  mount_path : string prop option; [@option]
  name : string prop;
  share_name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | {
       access_key = v_access_key;
       account_name = v_account_name;
       mount_path = v_mount_path;
       name = v_name;
       share_name = v_share_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mount_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key in
         ("access_key", arg) :: bnds
       in
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

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

type site_credential = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_credential) -> ()

let yojson_of_site_credential =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : site_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_credential

[@@@deriving.end]

type azurerm_app_service = {
  app_service_plan_id : string prop;
  app_settings : (string * string prop) list option; [@option]
  client_affinity_enabled : bool prop option; [@option]
  client_cert_enabled : bool prop option; [@option]
  client_cert_mode : string prop option; [@option]
  enabled : bool prop option; [@option]
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  key_vault_reference_identity_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  auth_settings : auth_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backup : backup list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connection_string : connection_string list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logs : logs list; [@default []] [@yojson_drop_default Stdlib.( = )]
  site_config : site_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_control : source_control list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_account : storage_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service) -> ()

let yojson_of_azurerm_app_service =
  (function
   | {
       app_service_plan_id = v_app_service_plan_id;
       app_settings = v_app_settings;
       client_affinity_enabled = v_client_affinity_enabled;
       client_cert_enabled = v_client_cert_enabled;
       client_cert_mode = v_client_cert_mode;
       enabled = v_enabled;
       https_only = v_https_only;
       id = v_id;
       key_vault_reference_identity_id =
         v_key_vault_reference_identity_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       auth_settings = v_auth_settings;
       backup = v_backup;
       connection_string = v_connection_string;
       identity = v_identity;
       logs = v_logs;
       site_config = v_site_config;
       source_control = v_source_control;
       storage_account = v_storage_account;
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
         if Stdlib.( = ) [] v_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account)
               v_storage_account
           in
           let bnd = "storage_account", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_control then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_control)
               v_source_control
           in
           let bnd = "source_control", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_site_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config) v_site_config
           in
           let bnd = "site_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logs then bnds
         else
           let arg = (yojson_of_list yojson_of_logs) v_logs in
           let bnd = "logs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connection_string then bnds
         else
           let arg =
             (yojson_of_list yojson_of_connection_string)
               v_connection_string
           in
           let bnd = "connection_string", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backup then bnds
         else
           let arg = (yojson_of_list yojson_of_backup) v_backup in
           let bnd = "backup", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings) v_auth_settings
           in
           let bnd = "auth_settings", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_key_vault_reference_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_reference_identity_id", arg in
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
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_cert_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_cert_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_cert_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_cert_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_affinity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_affinity_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_settings with
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
             let bnd = "app_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_plan_id
         in
         ("app_service_plan_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service

[@@@deriving.end]

let auth_settings__active_directory ?allowed_audiences ?client_secret
    ~client_id () : auth_settings__active_directory =
  { allowed_audiences; client_id; client_secret }

let auth_settings__facebook ?oauth_scopes ~app_id ~app_secret () :
    auth_settings__facebook =
  { app_id; app_secret; oauth_scopes }

let auth_settings__google ?oauth_scopes ~client_id ~client_secret ()
    : auth_settings__google =
  { client_id; client_secret; oauth_scopes }

let auth_settings__microsoft ?oauth_scopes ~client_id ~client_secret
    () : auth_settings__microsoft =
  { client_id; client_secret; oauth_scopes }

let auth_settings__twitter ~consumer_key ~consumer_secret () :
    auth_settings__twitter =
  { consumer_key; consumer_secret }

let auth_settings ?additional_login_params
    ?allowed_external_redirect_urls ?default_provider ?issuer
    ?runtime_version ?token_refresh_extension_hours
    ?token_store_enabled ?unauthenticated_client_action
    ?(active_directory = []) ?(facebook = []) ?(google = [])
    ?(microsoft = []) ?(twitter = []) ~enabled () : auth_settings =
  {
    additional_login_params;
    allowed_external_redirect_urls;
    default_provider;
    enabled;
    issuer;
    runtime_version;
    token_refresh_extension_hours;
    token_store_enabled;
    unauthenticated_client_action;
    active_directory;
    facebook;
    google;
    microsoft;
    twitter;
  }

let backup__schedule ?keep_at_least_one_backup
    ?retention_period_in_days ?start_time ~frequency_interval
    ~frequency_unit () : backup__schedule =
  {
    frequency_interval;
    frequency_unit;
    keep_at_least_one_backup;
    retention_period_in_days;
    start_time;
  }

let backup ?enabled ~name ~storage_account_url ~schedule () : backup
    =
  { enabled; name; storage_account_url; schedule }

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let logs__application_logs__azure_blob_storage ~level
    ~retention_in_days ~sas_url () :
    logs__application_logs__azure_blob_storage =
  { level; retention_in_days; sas_url }

let logs__application_logs ?file_system_level
    ?(azure_blob_storage = []) () : logs__application_logs =
  { file_system_level; azure_blob_storage }

let logs__http_logs__azure_blob_storage ~retention_in_days ~sas_url
    () : logs__http_logs__azure_blob_storage =
  { retention_in_days; sas_url }

let logs__http_logs__file_system ~retention_in_days ~retention_in_mb
    () : logs__http_logs__file_system =
  { retention_in_days; retention_in_mb }

let logs__http_logs ?(azure_blob_storage = []) ?(file_system = []) ()
    : logs__http_logs =
  { azure_blob_storage; file_system }

let logs ?detailed_error_messages_enabled
    ?failed_request_tracing_enabled ?(application_logs = [])
    ?(http_logs = []) () : logs =
  {
    detailed_error_messages_enabled;
    failed_request_tracing_enabled;
    application_logs;
    http_logs;
  }

let site_config__cors ?support_credentials ~allowed_origins () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config ?acr_use_managed_identity_credentials
    ?acr_user_managed_identity_client_id ?always_on ?app_command_line
    ?auto_swap_slot_name ?default_documents ?dotnet_framework_version
    ?ftps_state ?health_check_path ?http2_enabled ?ip_restriction
    ?java_container ?java_container_version ?java_version
    ?linux_fx_version ?local_mysql_enabled ?managed_pipeline_mode
    ?min_tls_version ?number_of_workers ?php_version ?python_version
    ?remote_debugging_enabled ?remote_debugging_version
    ?scm_ip_restriction ?scm_type ?scm_use_main_ip_restriction
    ?use_32_bit_worker_process ?vnet_route_all_enabled
    ?websockets_enabled ?windows_fx_version ?(cors = []) () :
    site_config =
  {
    acr_use_managed_identity_credentials;
    acr_user_managed_identity_client_id;
    always_on;
    app_command_line;
    auto_swap_slot_name;
    default_documents;
    dotnet_framework_version;
    ftps_state;
    health_check_path;
    http2_enabled;
    ip_restriction;
    java_container;
    java_container_version;
    java_version;
    linux_fx_version;
    local_mysql_enabled;
    managed_pipeline_mode;
    min_tls_version;
    number_of_workers;
    php_version;
    python_version;
    remote_debugging_enabled;
    remote_debugging_version;
    scm_ip_restriction;
    scm_type;
    scm_use_main_ip_restriction;
    use_32_bit_worker_process;
    vnet_route_all_enabled;
    websockets_enabled;
    windows_fx_version;
    cors;
  }

let source_control ?branch ?manual_integration ?repo_url
    ?rollback_enabled ?use_mercurial () : source_control =
  {
    branch;
    manual_integration;
    repo_url;
    rollback_enabled;
    use_mercurial;
  }

let storage_account ?mount_path ~access_key ~account_name ~name
    ~share_name ~type_ () : storage_account =
  { access_key; account_name; mount_path; name; share_name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service ?app_settings ?client_affinity_enabled
    ?client_cert_enabled ?client_cert_mode ?enabled ?https_only ?id
    ?key_vault_reference_identity_id ?tags ?(auth_settings = [])
    ?(backup = []) ?(identity = []) ?(logs = []) ?(site_config = [])
    ?(source_control = []) ?timeouts ~app_service_plan_id ~location
    ~name ~resource_group_name ~connection_string ~storage_account ()
    : azurerm_app_service =
  {
    app_service_plan_id;
    app_settings;
    client_affinity_enabled;
    client_cert_enabled;
    client_cert_mode;
    enabled;
    https_only;
    id;
    key_vault_reference_identity_id;
    location;
    name;
    resource_group_name;
    tags;
    auth_settings;
    backup;
    connection_string;
    identity;
    logs;
    site_config;
    source_control;
    storage_account;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  client_affinity_enabled : bool prop;
  client_cert_enabled : bool prop;
  client_cert_mode : string prop;
  custom_domain_verification_id : string prop;
  default_site_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  tags : (string * string) list prop;
}

let make ?app_settings ?client_affinity_enabled ?client_cert_enabled
    ?client_cert_mode ?enabled ?https_only ?id
    ?key_vault_reference_identity_id ?tags ?(auth_settings = [])
    ?(backup = []) ?(identity = []) ?(logs = []) ?(site_config = [])
    ?(source_control = []) ?timeouts ~app_service_plan_id ~location
    ~name ~resource_group_name ~connection_string ~storage_account
    __id =
  let __type = "azurerm_app_service" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       client_affinity_enabled =
         Prop.computed __type __id "client_affinity_enabled";
       client_cert_enabled =
         Prop.computed __type __id "client_cert_enabled";
       client_cert_mode =
         Prop.computed __type __id "client_cert_mode";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       default_site_hostname =
         Prop.computed __type __id "default_site_hostname";
       enabled = Prop.computed __type __id "enabled";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       key_vault_reference_identity_id =
         Prop.computed __type __id "key_vault_reference_identity_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_address_list =
         Prop.computed __type __id "outbound_ip_address_list";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_address_list =
         Prop.computed __type __id
           "possible_outbound_ip_address_list";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_credential = Prop.computed __type __id "site_credential";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service
        (azurerm_app_service ?app_settings ?client_affinity_enabled
           ?client_cert_enabled ?client_cert_mode ?enabled
           ?https_only ?id ?key_vault_reference_identity_id ?tags
           ~auth_settings ~backup ~identity ~logs ~site_config
           ~source_control ?timeouts ~app_service_plan_id ~location
           ~name ~resource_group_name ~connection_string
           ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?client_affinity_enabled
    ?client_cert_enabled ?client_cert_mode ?enabled ?https_only ?id
    ?key_vault_reference_identity_id ?tags ?(auth_settings = [])
    ?(backup = []) ?(identity = []) ?(logs = []) ?(site_config = [])
    ?(source_control = []) ?timeouts ~app_service_plan_id ~location
    ~name ~resource_group_name ~connection_string ~storage_account
    __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?client_affinity_enabled ?client_cert_enabled
      ?client_cert_mode ?enabled ?https_only ?id
      ?key_vault_reference_identity_id ?tags ~auth_settings ~backup
      ~identity ~logs ~site_config ~source_control ?timeouts
      ~app_service_plan_id ~location ~name ~resource_group_name
      ~connection_string ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

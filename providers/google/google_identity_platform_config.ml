(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type blocking_functions__forward_inbound_credentials = {
  access_token : bool prop option; [@option]
  id_token : bool prop option; [@option]
  refresh_token : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : blocking_functions__forward_inbound_credentials) -> ()

let yojson_of_blocking_functions__forward_inbound_credentials =
  (function
   | {
       access_token = v_access_token;
       id_token = v_id_token;
       refresh_token = v_refresh_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "refresh_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "id_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blocking_functions__forward_inbound_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blocking_functions__forward_inbound_credentials

[@@@deriving.end]

type blocking_functions__triggers = {
  event_type : string prop;
  function_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blocking_functions__triggers) -> ()

let yojson_of_blocking_functions__triggers =
  (function
   | { event_type = v_event_type; function_uri = v_function_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_uri in
         ("function_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : blocking_functions__triggers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blocking_functions__triggers

[@@@deriving.end]

type blocking_functions = {
  forward_inbound_credentials :
    blocking_functions__forward_inbound_credentials list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  triggers : blocking_functions__triggers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blocking_functions) -> ()

let yojson_of_blocking_functions =
  (function
   | {
       forward_inbound_credentials = v_forward_inbound_credentials;
       triggers = v_triggers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_triggers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_blocking_functions__triggers)
               v_triggers
           in
           let bnd = "triggers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forward_inbound_credentials then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_blocking_functions__forward_inbound_credentials)
               v_forward_inbound_credentials
           in
           let bnd = "forward_inbound_credentials", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : blocking_functions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blocking_functions

[@@@deriving.end]

type client__permissions = {
  disabled_user_deletion : bool prop option; [@option]
  disabled_user_signup : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client__permissions) -> ()

let yojson_of_client__permissions =
  (function
   | {
       disabled_user_deletion = v_disabled_user_deletion;
       disabled_user_signup = v_disabled_user_signup;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_disabled_user_signup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled_user_signup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_user_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled_user_deletion", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client__permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client__permissions

[@@@deriving.end]

type client = {
  permissions : client__permissions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client) -> ()

let yojson_of_client =
  (function
   | { permissions = v_permissions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client__permissions)
               v_permissions
           in
           let bnd = "permissions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : client -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client

[@@@deriving.end]

type mfa__provider_configs__totp_provider_config = {
  adjacent_intervals : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mfa__provider_configs__totp_provider_config) -> ()

let yojson_of_mfa__provider_configs__totp_provider_config =
  (function
   | { adjacent_intervals = v_adjacent_intervals } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_adjacent_intervals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "adjacent_intervals", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mfa__provider_configs__totp_provider_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mfa__provider_configs__totp_provider_config

[@@@deriving.end]

type mfa__provider_configs = {
  state : string prop option; [@option]
  totp_provider_config :
    mfa__provider_configs__totp_provider_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mfa__provider_configs) -> ()

let yojson_of_mfa__provider_configs =
  (function
   | {
       state = v_state;
       totp_provider_config = v_totp_provider_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_totp_provider_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mfa__provider_configs__totp_provider_config)
               v_totp_provider_config
           in
           let bnd = "totp_provider_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mfa__provider_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mfa__provider_configs

[@@@deriving.end]

type mfa = {
  enabled_providers : string prop list option; [@option]
  state : string prop option; [@option]
  provider_configs : mfa__provider_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mfa) -> ()

let yojson_of_mfa =
  (function
   | {
       enabled_providers = v_enabled_providers;
       state = v_state;
       provider_configs = v_provider_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_provider_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mfa__provider_configs)
               v_provider_configs
           in
           let bnd = "provider_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled_providers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_providers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mfa -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mfa

[@@@deriving.end]

type monitoring__request_logging = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring__request_logging) -> ()

let yojson_of_monitoring__request_logging =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : monitoring__request_logging ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring__request_logging

[@@@deriving.end]

type monitoring = {
  request_logging : monitoring__request_logging list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring) -> ()

let yojson_of_monitoring =
  (function
   | { request_logging = v_request_logging } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_request_logging then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring__request_logging)
               v_request_logging
           in
           let bnd = "request_logging", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : monitoring -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring

[@@@deriving.end]

type multi_tenant = {
  allow_tenants : bool prop option; [@option]
  default_tenant_location : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_tenant) -> ()

let yojson_of_multi_tenant =
  (function
   | {
       allow_tenants = v_allow_tenants;
       default_tenant_location = v_default_tenant_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_default_tenant_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_tenant_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_tenants with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_tenants", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : multi_tenant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_tenant

[@@@deriving.end]

type quota__sign_up_quota_config = {
  quota : float prop option; [@option]
  quota_duration : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota__sign_up_quota_config) -> ()

let yojson_of_quota__sign_up_quota_config =
  (function
   | {
       quota = v_quota;
       quota_duration = v_quota_duration;
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
         match v_quota_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quota_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "quota", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : quota__sign_up_quota_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota__sign_up_quota_config

[@@@deriving.end]

type quota = {
  sign_up_quota_config : quota__sign_up_quota_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota) -> ()

let yojson_of_quota =
  (function
   | { sign_up_quota_config = v_sign_up_quota_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sign_up_quota_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_quota__sign_up_quota_config)
               v_sign_up_quota_config
           in
           let bnd = "sign_up_quota_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : quota -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota

[@@@deriving.end]

type sign_in__anonymous = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__anonymous) -> ()

let yojson_of_sign_in__anonymous =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : sign_in__anonymous -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__anonymous

[@@@deriving.end]

type sign_in__email = {
  enabled : bool prop;
  password_required : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__email) -> ()

let yojson_of_sign_in__email =
  (function
   | { enabled = v_enabled; password_required = v_password_required }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_password_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : sign_in__email -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__email

[@@@deriving.end]

type sign_in__phone_number = {
  enabled : bool prop;
  test_phone_numbers : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__phone_number) -> ()

let yojson_of_sign_in__phone_number =
  (function
   | {
       enabled = v_enabled;
       test_phone_numbers = v_test_phone_numbers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_test_phone_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "test_phone_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : sign_in__phone_number -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__phone_number

[@@@deriving.end]

type sign_in__hash_config = {
  algorithm : string prop;
  memory_cost : float prop;
  rounds : float prop;
  salt_separator : string prop;
  signer_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__hash_config) -> ()

let yojson_of_sign_in__hash_config =
  (function
   | {
       algorithm = v_algorithm;
       memory_cost = v_memory_cost;
       rounds = v_rounds;
       salt_separator = v_salt_separator;
       signer_key = v_signer_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_signer_key in
         ("signer_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_salt_separator
         in
         ("salt_separator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rounds in
         ("rounds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_cost in
         ("memory_cost", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : sign_in__hash_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__hash_config

[@@@deriving.end]

type sign_in = {
  allow_duplicate_emails : bool prop option; [@option]
  anonymous : sign_in__anonymous list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  email : sign_in__email list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  phone_number : sign_in__phone_number list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in) -> ()

let yojson_of_sign_in =
  (function
   | {
       allow_duplicate_emails = v_allow_duplicate_emails;
       anonymous = v_anonymous;
       email = v_email;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_phone_number then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_in__phone_number)
               v_phone_number
           in
           let bnd = "phone_number", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_email then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_in__email) v_email
           in
           let bnd = "email", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_anonymous then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_in__anonymous)
               v_anonymous
           in
           let bnd = "anonymous", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allow_duplicate_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_duplicate_emails", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sign_in -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in

[@@@deriving.end]

type sms_region_config__allow_by_default = {
  disallowed_regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sms_region_config__allow_by_default) -> ()

let yojson_of_sms_region_config__allow_by_default =
  (function
   | { disallowed_regions = v_disallowed_regions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_disallowed_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disallowed_regions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sms_region_config__allow_by_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sms_region_config__allow_by_default

[@@@deriving.end]

type sms_region_config__allowlist_only = {
  allowed_regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sms_region_config__allowlist_only) -> ()

let yojson_of_sms_region_config__allowlist_only =
  (function
   | { allowed_regions = v_allowed_regions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allowed_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_regions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sms_region_config__allowlist_only ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sms_region_config__allowlist_only

[@@@deriving.end]

type sms_region_config = {
  allow_by_default : sms_region_config__allow_by_default list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowlist_only : sms_region_config__allowlist_only list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sms_region_config) -> ()

let yojson_of_sms_region_config =
  (function
   | {
       allow_by_default = v_allow_by_default;
       allowlist_only = v_allowlist_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowlist_only then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_sms_region_config__allowlist_only)
               v_allowlist_only
           in
           let bnd = "allowlist_only", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_by_default then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_sms_region_config__allow_by_default)
               v_allow_by_default
           in
           let bnd = "allow_by_default", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : sms_region_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sms_region_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_identity_platform_config = {
  authorized_domains : string prop list option; [@option]
  autodelete_anonymous_users : bool prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  blocking_functions : blocking_functions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  client : client list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mfa : mfa list; [@default []] [@yojson_drop_default Stdlib.( = )]
  monitoring : monitoring list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  multi_tenant : multi_tenant list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  quota : quota list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sign_in : sign_in list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sms_region_config : sms_region_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_identity_platform_config) -> ()

let yojson_of_google_identity_platform_config =
  (function
   | {
       authorized_domains = v_authorized_domains;
       autodelete_anonymous_users = v_autodelete_anonymous_users;
       id = v_id;
       project = v_project;
       blocking_functions = v_blocking_functions;
       client = v_client;
       mfa = v_mfa;
       monitoring = v_monitoring;
       multi_tenant = v_multi_tenant;
       quota = v_quota;
       sign_in = v_sign_in;
       sms_region_config = v_sms_region_config;
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
         if Stdlib.( = ) [] v_sms_region_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sms_region_config)
               v_sms_region_config
           in
           let bnd = "sms_region_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sign_in then bnds
         else
           let arg = (yojson_of_list yojson_of_sign_in) v_sign_in in
           let bnd = "sign_in", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_quota then bnds
         else
           let arg = (yojson_of_list yojson_of_quota) v_quota in
           let bnd = "quota", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_multi_tenant then bnds
         else
           let arg =
             (yojson_of_list yojson_of_multi_tenant) v_multi_tenant
           in
           let bnd = "multi_tenant", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitoring then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring) v_monitoring
           in
           let bnd = "monitoring", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mfa then bnds
         else
           let arg = (yojson_of_list yojson_of_mfa) v_mfa in
           let bnd = "mfa", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client then bnds
         else
           let arg = (yojson_of_list yojson_of_client) v_client in
           let bnd = "client", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_blocking_functions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_blocking_functions)
               v_blocking_functions
           in
           let bnd = "blocking_functions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_autodelete_anonymous_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "autodelete_anonymous_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorized_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorized_domains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_identity_platform_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_identity_platform_config

[@@@deriving.end]

let blocking_functions__forward_inbound_credentials ?access_token
    ?id_token ?refresh_token () :
    blocking_functions__forward_inbound_credentials =
  { access_token; id_token; refresh_token }

let blocking_functions__triggers ~event_type ~function_uri () :
    blocking_functions__triggers =
  { event_type; function_uri }

let blocking_functions ?(forward_inbound_credentials = []) ~triggers
    () : blocking_functions =
  { forward_inbound_credentials; triggers }

let client__permissions ?disabled_user_deletion ?disabled_user_signup
    () : client__permissions =
  { disabled_user_deletion; disabled_user_signup }

let client ?(permissions = []) () : client = { permissions }

let mfa__provider_configs__totp_provider_config ?adjacent_intervals
    () : mfa__provider_configs__totp_provider_config =
  { adjacent_intervals }

let mfa__provider_configs ?state ?(totp_provider_config = []) () :
    mfa__provider_configs =
  { state; totp_provider_config }

let mfa ?enabled_providers ?state ?(provider_configs = []) () : mfa =
  { enabled_providers; state; provider_configs }

let monitoring__request_logging ?enabled () :
    monitoring__request_logging =
  { enabled }

let monitoring ?(request_logging = []) () : monitoring =
  { request_logging }

let multi_tenant ?allow_tenants ?default_tenant_location () :
    multi_tenant =
  { allow_tenants; default_tenant_location }

let quota__sign_up_quota_config ?quota ?quota_duration ?start_time ()
    : quota__sign_up_quota_config =
  { quota; quota_duration; start_time }

let quota ?(sign_up_quota_config = []) () : quota =
  { sign_up_quota_config }

let sign_in__anonymous ~enabled () : sign_in__anonymous = { enabled }

let sign_in__email ?password_required ~enabled () : sign_in__email =
  { enabled; password_required }

let sign_in__phone_number ?test_phone_numbers ~enabled () :
    sign_in__phone_number =
  { enabled; test_phone_numbers }

let sign_in ?allow_duplicate_emails ?(anonymous = []) ?(email = [])
    ?(phone_number = []) () : sign_in =
  { allow_duplicate_emails; anonymous; email; phone_number }

let sms_region_config__allow_by_default ?disallowed_regions () :
    sms_region_config__allow_by_default =
  { disallowed_regions }

let sms_region_config__allowlist_only ?allowed_regions () :
    sms_region_config__allowlist_only =
  { allowed_regions }

let sms_region_config ?(allow_by_default = []) ?(allowlist_only = [])
    () : sms_region_config =
  { allow_by_default; allowlist_only }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_config ?authorized_domains
    ?autodelete_anonymous_users ?id ?project
    ?(blocking_functions = []) ?(client = []) ?(mfa = [])
    ?(monitoring = []) ?(multi_tenant = []) ?(quota = [])
    ?(sign_in = []) ?(sms_region_config = []) ?timeouts () :
    google_identity_platform_config =
  {
    authorized_domains;
    autodelete_anonymous_users;
    id;
    project;
    blocking_functions;
    client;
    mfa;
    monitoring;
    multi_tenant;
    quota;
    sign_in;
    sms_region_config;
    timeouts;
  }

type t = {
  tf_name : string;
  authorized_domains : string list prop;
  autodelete_anonymous_users : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?authorized_domains ?autodelete_anonymous_users ?id ?project
    ?(blocking_functions = []) ?(client = []) ?(mfa = [])
    ?(monitoring = []) ?(multi_tenant = []) ?(quota = [])
    ?(sign_in = []) ?(sms_region_config = []) ?timeouts __id =
  let __type = "google_identity_platform_config" in
  let __attrs =
    ({
       tf_name = __id;
       authorized_domains =
         Prop.computed __type __id "authorized_domains";
       autodelete_anonymous_users =
         Prop.computed __type __id "autodelete_anonymous_users";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_config
        (google_identity_platform_config ?authorized_domains
           ?autodelete_anonymous_users ?id ?project
           ~blocking_functions ~client ~mfa ~monitoring ~multi_tenant
           ~quota ~sign_in ~sms_region_config ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_domains
    ?autodelete_anonymous_users ?id ?project
    ?(blocking_functions = []) ?(client = []) ?(mfa = [])
    ?(monitoring = []) ?(multi_tenant = []) ?(quota = [])
    ?(sign_in = []) ?(sms_region_config = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_domains ?autodelete_anonymous_users ?id ?project
      ~blocking_functions ~client ~mfa ~monitoring ~multi_tenant
      ~quota ~sign_in ~sms_region_config ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

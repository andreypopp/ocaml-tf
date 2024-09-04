(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type account_recovery_setting__recovery_mechanism = {
  name : string prop;
  priority : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : account_recovery_setting__recovery_mechanism) -> ()

let yojson_of_account_recovery_setting__recovery_mechanism =
  (function
   | { name = v_name; priority = v_priority } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : account_recovery_setting__recovery_mechanism ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_account_recovery_setting__recovery_mechanism

[@@@deriving.end]

type account_recovery_setting = {
  recovery_mechanism :
    account_recovery_setting__recovery_mechanism list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : account_recovery_setting) -> ()

let yojson_of_account_recovery_setting =
  (function
   | { recovery_mechanism = v_recovery_mechanism } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recovery_mechanism then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_account_recovery_setting__recovery_mechanism)
               v_recovery_mechanism
           in
           let bnd = "recovery_mechanism", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : account_recovery_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_account_recovery_setting

[@@@deriving.end]

type admin_create_user_config__invite_message_template = {
  email_message : string prop option; [@option]
  email_subject : string prop option; [@option]
  sms_message : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : admin_create_user_config__invite_message_template) -> ()

let yojson_of_admin_create_user_config__invite_message_template =
  (function
   | {
       email_message = v_email_message;
       email_subject = v_email_subject;
       sms_message = v_sms_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sms_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sms_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_message", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : admin_create_user_config__invite_message_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_create_user_config__invite_message_template

[@@@deriving.end]

type admin_create_user_config = {
  allow_admin_create_user_only : bool prop option; [@option]
  invite_message_template :
    admin_create_user_config__invite_message_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : admin_create_user_config) -> ()

let yojson_of_admin_create_user_config =
  (function
   | {
       allow_admin_create_user_only = v_allow_admin_create_user_only;
       invite_message_template = v_invite_message_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_invite_message_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_admin_create_user_config__invite_message_template)
               v_invite_message_template
           in
           let bnd = "invite_message_template", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allow_admin_create_user_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_admin_create_user_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : admin_create_user_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_create_user_config

[@@@deriving.end]

type device_configuration = {
  challenge_required_on_new_device : bool prop option; [@option]
  device_only_remembered_on_user_prompt : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : device_configuration) -> ()

let yojson_of_device_configuration =
  (function
   | {
       challenge_required_on_new_device =
         v_challenge_required_on_new_device;
       device_only_remembered_on_user_prompt =
         v_device_only_remembered_on_user_prompt;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_device_only_remembered_on_user_prompt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "device_only_remembered_on_user_prompt", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_challenge_required_on_new_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "challenge_required_on_new_device", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : device_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_device_configuration

[@@@deriving.end]

type email_configuration = {
  configuration_set : string prop option; [@option]
  email_sending_account : string prop option; [@option]
  from_email_address : string prop option; [@option]
  reply_to_email_address : string prop option; [@option]
  source_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : email_configuration) -> ()

let yojson_of_email_configuration =
  (function
   | {
       configuration_set = v_configuration_set;
       email_sending_account = v_email_sending_account;
       from_email_address = v_from_email_address;
       reply_to_email_address = v_reply_to_email_address;
       source_arn = v_source_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reply_to_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reply_to_email_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "from_email_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_sending_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_sending_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_set with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_set", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : email_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_configuration

[@@@deriving.end]

type lambda_config__custom_email_sender = {
  lambda_arn : string prop;
  lambda_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_config__custom_email_sender) -> ()

let yojson_of_lambda_config__custom_email_sender =
  (function
   | { lambda_arn = v_lambda_arn; lambda_version = v_lambda_version }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lambda_version
         in
         ("lambda_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       `Assoc bnds
    : lambda_config__custom_email_sender ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_config__custom_email_sender

[@@@deriving.end]

type lambda_config__custom_sms_sender = {
  lambda_arn : string prop;
  lambda_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_config__custom_sms_sender) -> ()

let yojson_of_lambda_config__custom_sms_sender =
  (function
   | { lambda_arn = v_lambda_arn; lambda_version = v_lambda_version }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lambda_version
         in
         ("lambda_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       `Assoc bnds
    : lambda_config__custom_sms_sender ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_config__custom_sms_sender

[@@@deriving.end]

type lambda_config__pre_token_generation_config = {
  lambda_arn : string prop;
  lambda_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_config__pre_token_generation_config) -> ()

let yojson_of_lambda_config__pre_token_generation_config =
  (function
   | { lambda_arn = v_lambda_arn; lambda_version = v_lambda_version }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lambda_version
         in
         ("lambda_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       `Assoc bnds
    : lambda_config__pre_token_generation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_config__pre_token_generation_config

[@@@deriving.end]

type lambda_config = {
  create_auth_challenge : string prop option; [@option]
  custom_message : string prop option; [@option]
  define_auth_challenge : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  post_authentication : string prop option; [@option]
  post_confirmation : string prop option; [@option]
  pre_authentication : string prop option; [@option]
  pre_sign_up : string prop option; [@option]
  pre_token_generation : string prop option; [@option]
  user_migration : string prop option; [@option]
  verify_auth_challenge_response : string prop option; [@option]
  custom_email_sender : lambda_config__custom_email_sender list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_sms_sender : lambda_config__custom_sms_sender list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pre_token_generation_config :
    lambda_config__pre_token_generation_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_config) -> ()

let yojson_of_lambda_config =
  (function
   | {
       create_auth_challenge = v_create_auth_challenge;
       custom_message = v_custom_message;
       define_auth_challenge = v_define_auth_challenge;
       kms_key_id = v_kms_key_id;
       post_authentication = v_post_authentication;
       post_confirmation = v_post_confirmation;
       pre_authentication = v_pre_authentication;
       pre_sign_up = v_pre_sign_up;
       pre_token_generation = v_pre_token_generation;
       user_migration = v_user_migration;
       verify_auth_challenge_response =
         v_verify_auth_challenge_response;
       custom_email_sender = v_custom_email_sender;
       custom_sms_sender = v_custom_sms_sender;
       pre_token_generation_config = v_pre_token_generation_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pre_token_generation_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lambda_config__pre_token_generation_config)
               v_pre_token_generation_config
           in
           let bnd = "pre_token_generation_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_sms_sender then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lambda_config__custom_sms_sender)
               v_custom_sms_sender
           in
           let bnd = "custom_sms_sender", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_email_sender then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lambda_config__custom_email_sender)
               v_custom_email_sender
           in
           let bnd = "custom_email_sender", arg in
           bnd :: bnds
       in
       let bnds =
         match v_verify_auth_challenge_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verify_auth_challenge_response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_migration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_migration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_token_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pre_token_generation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_sign_up with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pre_sign_up", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pre_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_confirmation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_confirmation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_define_auth_challenge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "define_auth_challenge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_auth_challenge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_auth_challenge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lambda_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_config

[@@@deriving.end]

type password_policy = {
  minimum_length : float prop option; [@option]
  require_lowercase : bool prop option; [@option]
  require_numbers : bool prop option; [@option]
  require_symbols : bool prop option; [@option]
  require_uppercase : bool prop option; [@option]
  temporary_password_validity_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : password_policy) -> ()

let yojson_of_password_policy =
  (function
   | {
       minimum_length = v_minimum_length;
       require_lowercase = v_require_lowercase;
       require_numbers = v_require_numbers;
       require_symbols = v_require_symbols;
       require_uppercase = v_require_uppercase;
       temporary_password_validity_days =
         v_temporary_password_validity_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_temporary_password_validity_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "temporary_password_validity_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_uppercase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_uppercase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_symbols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_symbols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_lowercase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_lowercase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_length", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : password_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_password_policy

[@@@deriving.end]

type schema__number_attribute_constraints = {
  max_value : string prop option; [@option]
  min_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema__number_attribute_constraints) -> ()

let yojson_of_schema__number_attribute_constraints =
  (function
   | { max_value = v_max_value; min_value = v_min_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schema__number_attribute_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema__number_attribute_constraints

[@@@deriving.end]

type schema__string_attribute_constraints = {
  max_length : string prop option; [@option]
  min_length : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema__string_attribute_constraints) -> ()

let yojson_of_schema__string_attribute_constraints =
  (function
   | { max_length = v_max_length; min_length = v_min_length } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_length", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schema__string_attribute_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema__string_attribute_constraints

[@@@deriving.end]

type schema = {
  attribute_data_type : string prop;
  developer_only_attribute : bool prop option; [@option]
  mutable_ : bool prop option; [@option] [@key "mutable"]
  name : string prop;
  required : bool prop option; [@option]
  number_attribute_constraints :
    schema__number_attribute_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  string_attribute_constraints :
    schema__string_attribute_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema) -> ()

let yojson_of_schema =
  (function
   | {
       attribute_data_type = v_attribute_data_type;
       developer_only_attribute = v_developer_only_attribute;
       mutable_ = v_mutable_;
       name = v_name;
       required = v_required;
       number_attribute_constraints = v_number_attribute_constraints;
       string_attribute_constraints = v_string_attribute_constraints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_string_attribute_constraints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema__string_attribute_constraints)
               v_string_attribute_constraints
           in
           let bnd = "string_attribute_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_number_attribute_constraints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema__number_attribute_constraints)
               v_number_attribute_constraints
           in
           let bnd = "number_attribute_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mutable_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mutable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_developer_only_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "developer_only_attribute", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_data_type
         in
         ("attribute_data_type", arg) :: bnds
       in
       `Assoc bnds
    : schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema

[@@@deriving.end]

type sms_configuration = {
  external_id : string prop;
  sns_caller_arn : string prop;
  sns_region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sms_configuration) -> ()

let yojson_of_sms_configuration =
  (function
   | {
       external_id = v_external_id;
       sns_caller_arn = v_sns_caller_arn;
       sns_region = v_sns_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sns_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns_region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sns_caller_arn
         in
         ("sns_caller_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_external_id in
         ("external_id", arg) :: bnds
       in
       `Assoc bnds
    : sms_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sms_configuration

[@@@deriving.end]

type software_token_mfa_configuration = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : software_token_mfa_configuration) -> ()

let yojson_of_software_token_mfa_configuration =
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
    : software_token_mfa_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_software_token_mfa_configuration

[@@@deriving.end]

type user_attribute_update_settings = {
  attributes_require_verification_before_update : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_attribute_update_settings) -> ()

let yojson_of_user_attribute_update_settings =
  (function
   | {
       attributes_require_verification_before_update =
         v_attributes_require_verification_before_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_attributes_require_verification_before_update
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_attributes_require_verification_before_update
           in
           let bnd =
             "attributes_require_verification_before_update", arg
           in
           bnd :: bnds
       in
       `Assoc bnds
    : user_attribute_update_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_attribute_update_settings

[@@@deriving.end]

type user_pool_add_ons = { advanced_security_mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : user_pool_add_ons) -> ()

let yojson_of_user_pool_add_ons =
  (function
   | { advanced_security_mode = v_advanced_security_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_advanced_security_mode
         in
         ("advanced_security_mode", arg) :: bnds
       in
       `Assoc bnds
    : user_pool_add_ons -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_pool_add_ons

[@@@deriving.end]

type username_configuration = { case_sensitive : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : username_configuration) -> ()

let yojson_of_username_configuration =
  (function
   | { case_sensitive = v_case_sensitive } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_case_sensitive in
         ("case_sensitive", arg) :: bnds
       in
       `Assoc bnds
    : username_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_username_configuration

[@@@deriving.end]

type verification_message_template = {
  default_email_option : string prop option; [@option]
  email_message : string prop option; [@option]
  email_message_by_link : string prop option; [@option]
  email_subject : string prop option; [@option]
  email_subject_by_link : string prop option; [@option]
  sms_message : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_message_template) -> ()

let yojson_of_verification_message_template =
  (function
   | {
       default_email_option = v_default_email_option;
       email_message = v_email_message;
       email_message_by_link = v_email_message_by_link;
       email_subject = v_email_subject;
       email_subject_by_link = v_email_subject_by_link;
       sms_message = v_sms_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sms_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sms_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_subject_by_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_subject_by_link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_message_by_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_message_by_link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_email_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_email_option", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : verification_message_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_message_template

[@@@deriving.end]

type aws_cognito_user_pool = {
  alias_attributes : string prop list option; [@option]
  auto_verified_attributes : string prop list option; [@option]
  deletion_protection : string prop option; [@option]
  email_verification_message : string prop option; [@option]
  email_verification_subject : string prop option; [@option]
  id : string prop option; [@option]
  mfa_configuration : string prop option; [@option]
  name : string prop;
  sms_authentication_message : string prop option; [@option]
  sms_verification_message : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  username_attributes : string prop list option; [@option]
  account_recovery_setting : account_recovery_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  admin_create_user_config : admin_create_user_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  device_configuration : device_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  email_configuration : email_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda_config : lambda_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  password_policy : password_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema : schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sms_configuration : sms_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  software_token_mfa_configuration :
    software_token_mfa_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_attribute_update_settings :
    user_attribute_update_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_pool_add_ons : user_pool_add_ons list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  username_configuration : username_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  verification_message_template : verification_message_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool) -> ()

let yojson_of_aws_cognito_user_pool =
  (function
   | {
       alias_attributes = v_alias_attributes;
       auto_verified_attributes = v_auto_verified_attributes;
       deletion_protection = v_deletion_protection;
       email_verification_message = v_email_verification_message;
       email_verification_subject = v_email_verification_subject;
       id = v_id;
       mfa_configuration = v_mfa_configuration;
       name = v_name;
       sms_authentication_message = v_sms_authentication_message;
       sms_verification_message = v_sms_verification_message;
       tags = v_tags;
       tags_all = v_tags_all;
       username_attributes = v_username_attributes;
       account_recovery_setting = v_account_recovery_setting;
       admin_create_user_config = v_admin_create_user_config;
       device_configuration = v_device_configuration;
       email_configuration = v_email_configuration;
       lambda_config = v_lambda_config;
       password_policy = v_password_policy;
       schema = v_schema;
       sms_configuration = v_sms_configuration;
       software_token_mfa_configuration =
         v_software_token_mfa_configuration;
       user_attribute_update_settings =
         v_user_attribute_update_settings;
       user_pool_add_ons = v_user_pool_add_ons;
       username_configuration = v_username_configuration;
       verification_message_template =
         v_verification_message_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_verification_message_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_verification_message_template)
               v_verification_message_template
           in
           let bnd = "verification_message_template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_username_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_username_configuration)
               v_username_configuration
           in
           let bnd = "username_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_user_pool_add_ons then bnds
         else
           let arg =
             (yojson_of_list yojson_of_user_pool_add_ons)
               v_user_pool_add_ons
           in
           let bnd = "user_pool_add_ons", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_user_attribute_update_settings then
           bnds
         else
           let arg =
             (yojson_of_list yojson_of_user_attribute_update_settings)
               v_user_attribute_update_settings
           in
           let bnd = "user_attribute_update_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_software_token_mfa_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_software_token_mfa_configuration)
               v_software_token_mfa_configuration
           in
           let bnd = "software_token_mfa_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sms_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sms_configuration)
               v_sms_configuration
           in
           let bnd = "sms_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schema then bnds
         else
           let arg = (yojson_of_list yojson_of_schema) v_schema in
           let bnd = "schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_password_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_password_policy)
               v_password_policy
           in
           let bnd = "password_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lambda_config) v_lambda_config
           in
           let bnd = "lambda_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_email_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_email_configuration)
               v_email_configuration
           in
           let bnd = "email_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_device_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_device_configuration)
               v_device_configuration
           in
           let bnd = "device_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_create_user_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_admin_create_user_config)
               v_admin_create_user_config
           in
           let bnd = "admin_create_user_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_account_recovery_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_account_recovery_setting)
               v_account_recovery_setting
           in
           let bnd = "account_recovery_setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_username_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "username_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sms_verification_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sms_verification_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sms_authentication_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sms_authentication_message", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mfa_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mfa_configuration", arg in
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
         match v_email_verification_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_verification_subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_verification_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_verification_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_verified_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "auto_verified_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alias_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alias_attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool

[@@@deriving.end]

let account_recovery_setting__recovery_mechanism ~name ~priority () :
    account_recovery_setting__recovery_mechanism =
  { name; priority }

let account_recovery_setting ~recovery_mechanism () :
    account_recovery_setting =
  { recovery_mechanism }

let admin_create_user_config__invite_message_template ?email_message
    ?email_subject ?sms_message () :
    admin_create_user_config__invite_message_template =
  { email_message; email_subject; sms_message }

let admin_create_user_config ?allow_admin_create_user_only
    ?(invite_message_template = []) () : admin_create_user_config =
  { allow_admin_create_user_only; invite_message_template }

let device_configuration ?challenge_required_on_new_device
    ?device_only_remembered_on_user_prompt () : device_configuration
    =
  {
    challenge_required_on_new_device;
    device_only_remembered_on_user_prompt;
  }

let email_configuration ?configuration_set ?email_sending_account
    ?from_email_address ?reply_to_email_address ?source_arn () :
    email_configuration =
  {
    configuration_set;
    email_sending_account;
    from_email_address;
    reply_to_email_address;
    source_arn;
  }

let lambda_config__custom_email_sender ~lambda_arn ~lambda_version ()
    : lambda_config__custom_email_sender =
  { lambda_arn; lambda_version }

let lambda_config__custom_sms_sender ~lambda_arn ~lambda_version () :
    lambda_config__custom_sms_sender =
  { lambda_arn; lambda_version }

let lambda_config__pre_token_generation_config ~lambda_arn
    ~lambda_version () : lambda_config__pre_token_generation_config =
  { lambda_arn; lambda_version }

let lambda_config ?create_auth_challenge ?custom_message
    ?define_auth_challenge ?kms_key_id ?post_authentication
    ?post_confirmation ?pre_authentication ?pre_sign_up
    ?pre_token_generation ?user_migration
    ?verify_auth_challenge_response ?(custom_email_sender = [])
    ?(custom_sms_sender = []) ?(pre_token_generation_config = []) ()
    : lambda_config =
  {
    create_auth_challenge;
    custom_message;
    define_auth_challenge;
    kms_key_id;
    post_authentication;
    post_confirmation;
    pre_authentication;
    pre_sign_up;
    pre_token_generation;
    user_migration;
    verify_auth_challenge_response;
    custom_email_sender;
    custom_sms_sender;
    pre_token_generation_config;
  }

let password_policy ?minimum_length ?require_lowercase
    ?require_numbers ?require_symbols ?require_uppercase
    ?temporary_password_validity_days () : password_policy =
  {
    minimum_length;
    require_lowercase;
    require_numbers;
    require_symbols;
    require_uppercase;
    temporary_password_validity_days;
  }

let schema__number_attribute_constraints ?max_value ?min_value () :
    schema__number_attribute_constraints =
  { max_value; min_value }

let schema__string_attribute_constraints ?max_length ?min_length () :
    schema__string_attribute_constraints =
  { max_length; min_length }

let schema ?developer_only_attribute ?mutable_ ?required
    ?(number_attribute_constraints = [])
    ?(string_attribute_constraints = []) ~attribute_data_type ~name
    () : schema =
  {
    attribute_data_type;
    developer_only_attribute;
    mutable_;
    name;
    required;
    number_attribute_constraints;
    string_attribute_constraints;
  }

let sms_configuration ?sns_region ~external_id ~sns_caller_arn () :
    sms_configuration =
  { external_id; sns_caller_arn; sns_region }

let software_token_mfa_configuration ~enabled () :
    software_token_mfa_configuration =
  { enabled }

let user_attribute_update_settings
    ~attributes_require_verification_before_update () :
    user_attribute_update_settings =
  { attributes_require_verification_before_update }

let user_pool_add_ons ~advanced_security_mode () : user_pool_add_ons
    =
  { advanced_security_mode }

let username_configuration ~case_sensitive () :
    username_configuration =
  { case_sensitive }

let verification_message_template ?default_email_option
    ?email_message ?email_message_by_link ?email_subject
    ?email_subject_by_link ?sms_message () :
    verification_message_template =
  {
    default_email_option;
    email_message;
    email_message_by_link;
    email_subject;
    email_subject_by_link;
    sms_message;
  }

let aws_cognito_user_pool ?alias_attributes ?auto_verified_attributes
    ?deletion_protection ?email_verification_message
    ?email_verification_subject ?id ?mfa_configuration
    ?sms_authentication_message ?sms_verification_message ?tags
    ?tags_all ?username_attributes ?(account_recovery_setting = [])
    ?(admin_create_user_config = []) ?(device_configuration = [])
    ?(email_configuration = []) ?(lambda_config = [])
    ?(password_policy = []) ?(sms_configuration = [])
    ?(software_token_mfa_configuration = [])
    ?(user_attribute_update_settings = []) ?(user_pool_add_ons = [])
    ?(username_configuration = [])
    ?(verification_message_template = []) ~name ~schema () :
    aws_cognito_user_pool =
  {
    alias_attributes;
    auto_verified_attributes;
    deletion_protection;
    email_verification_message;
    email_verification_subject;
    id;
    mfa_configuration;
    name;
    sms_authentication_message;
    sms_verification_message;
    tags;
    tags_all;
    username_attributes;
    account_recovery_setting;
    admin_create_user_config;
    device_configuration;
    email_configuration;
    lambda_config;
    password_policy;
    schema;
    sms_configuration;
    software_token_mfa_configuration;
    user_attribute_update_settings;
    user_pool_add_ons;
    username_configuration;
    verification_message_template;
  }

type t = {
  tf_name : string;
  alias_attributes : string list prop;
  arn : string prop;
  auto_verified_attributes : string list prop;
  creation_date : string prop;
  custom_domain : string prop;
  deletion_protection : string prop;
  domain : string prop;
  email_verification_message : string prop;
  email_verification_subject : string prop;
  endpoint : string prop;
  estimated_number_of_users : float prop;
  id : string prop;
  last_modified_date : string prop;
  mfa_configuration : string prop;
  name : string prop;
  sms_authentication_message : string prop;
  sms_verification_message : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  username_attributes : string list prop;
}

let make ?alias_attributes ?auto_verified_attributes
    ?deletion_protection ?email_verification_message
    ?email_verification_subject ?id ?mfa_configuration
    ?sms_authentication_message ?sms_verification_message ?tags
    ?tags_all ?username_attributes ?(account_recovery_setting = [])
    ?(admin_create_user_config = []) ?(device_configuration = [])
    ?(email_configuration = []) ?(lambda_config = [])
    ?(password_policy = []) ?(sms_configuration = [])
    ?(software_token_mfa_configuration = [])
    ?(user_attribute_update_settings = []) ?(user_pool_add_ons = [])
    ?(username_configuration = [])
    ?(verification_message_template = []) ~name ~schema __id =
  let __type = "aws_cognito_user_pool" in
  let __attrs =
    ({
       tf_name = __id;
       alias_attributes =
         Prop.computed __type __id "alias_attributes";
       arn = Prop.computed __type __id "arn";
       auto_verified_attributes =
         Prop.computed __type __id "auto_verified_attributes";
       creation_date = Prop.computed __type __id "creation_date";
       custom_domain = Prop.computed __type __id "custom_domain";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       domain = Prop.computed __type __id "domain";
       email_verification_message =
         Prop.computed __type __id "email_verification_message";
       email_verification_subject =
         Prop.computed __type __id "email_verification_subject";
       endpoint = Prop.computed __type __id "endpoint";
       estimated_number_of_users =
         Prop.computed __type __id "estimated_number_of_users";
       id = Prop.computed __type __id "id";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       mfa_configuration =
         Prop.computed __type __id "mfa_configuration";
       name = Prop.computed __type __id "name";
       sms_authentication_message =
         Prop.computed __type __id "sms_authentication_message";
       sms_verification_message =
         Prop.computed __type __id "sms_verification_message";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       username_attributes =
         Prop.computed __type __id "username_attributes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool
        (aws_cognito_user_pool ?alias_attributes
           ?auto_verified_attributes ?deletion_protection
           ?email_verification_message ?email_verification_subject
           ?id ?mfa_configuration ?sms_authentication_message
           ?sms_verification_message ?tags ?tags_all
           ?username_attributes ~account_recovery_setting
           ~admin_create_user_config ~device_configuration
           ~email_configuration ~lambda_config ~password_policy
           ~sms_configuration ~software_token_mfa_configuration
           ~user_attribute_update_settings ~user_pool_add_ons
           ~username_configuration ~verification_message_template
           ~name ~schema ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_attributes ?auto_verified_attributes
    ?deletion_protection ?email_verification_message
    ?email_verification_subject ?id ?mfa_configuration
    ?sms_authentication_message ?sms_verification_message ?tags
    ?tags_all ?username_attributes ?(account_recovery_setting = [])
    ?(admin_create_user_config = []) ?(device_configuration = [])
    ?(email_configuration = []) ?(lambda_config = [])
    ?(password_policy = []) ?(sms_configuration = [])
    ?(software_token_mfa_configuration = [])
    ?(user_attribute_update_settings = []) ?(user_pool_add_ons = [])
    ?(username_configuration = [])
    ?(verification_message_template = []) ~name ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?alias_attributes ?auto_verified_attributes
      ?deletion_protection ?email_verification_message
      ?email_verification_subject ?id ?mfa_configuration
      ?sms_authentication_message ?sms_verification_message ?tags
      ?tags_all ?username_attributes ~account_recovery_setting
      ~admin_create_user_config ~device_configuration
      ~email_configuration ~lambda_config ~password_policy
      ~sms_configuration ~software_token_mfa_configuration
      ~user_attribute_update_settings ~user_pool_add_ons
      ~username_configuration ~verification_message_template ~name
      ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

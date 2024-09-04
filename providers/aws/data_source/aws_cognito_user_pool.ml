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
  email_message : string prop;
  email_subject : string prop;
  sms_message : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_sms_message in
         ("sms_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_subject in
         ("email_subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_message in
         ("email_message", arg) :: bnds
       in
       `Assoc bnds
    : admin_create_user_config__invite_message_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_create_user_config__invite_message_template

[@@@deriving.end]

type admin_create_user_config = {
  allow_admin_create_user_only : bool prop;
  invite_message_template :
    admin_create_user_config__invite_message_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unused_account_validity_days : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : admin_create_user_config) -> ()

let yojson_of_admin_create_user_config =
  (function
   | {
       allow_admin_create_user_only = v_allow_admin_create_user_only;
       invite_message_template = v_invite_message_template;
       unused_account_validity_days = v_unused_account_validity_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_unused_account_validity_days
         in
         ("unused_account_validity_days", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_allow_admin_create_user_only
         in
         ("allow_admin_create_user_only", arg) :: bnds
       in
       `Assoc bnds
    : admin_create_user_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_create_user_config

[@@@deriving.end]

type device_configuration = {
  challenge_required_on_new_device : bool prop;
  device_only_remembered_on_user_prompt : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_device_only_remembered_on_user_prompt
         in
         ("device_only_remembered_on_user_prompt", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_challenge_required_on_new_device
         in
         ("challenge_required_on_new_device", arg) :: bnds
       in
       `Assoc bnds
    : device_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_device_configuration

[@@@deriving.end]

type email_configuration = {
  configuration_set : string prop;
  email_sending_account : string prop;
  from : string prop;
  reply_to_email_address : string prop;
  source_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : email_configuration) -> ()

let yojson_of_email_configuration =
  (function
   | {
       configuration_set = v_configuration_set;
       email_sending_account = v_email_sending_account;
       from = v_from;
       reply_to_email_address = v_reply_to_email_address;
       source_arn = v_source_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_arn in
         ("source_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reply_to_email_address
         in
         ("reply_to_email_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_from in
         ("from", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_email_sending_account
         in
         ("email_sending_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_set
         in
         ("configuration_set", arg) :: bnds
       in
       `Assoc bnds
    : email_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_configuration

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

type lambda_config = {
  create_auth_challenge : string prop;
  custom_email_sender : lambda_config__custom_email_sender list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_message : string prop;
  custom_sms_sender : lambda_config__custom_sms_sender list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  define_auth_challenge : string prop;
  kms_key_id : string prop;
  post_authentication : string prop;
  post_confirmation : string prop;
  pre_authentication : string prop;
  pre_sign_up : string prop;
  pre_token_generation : string prop;
  pre_token_generation_config :
    lambda_config__pre_token_generation_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_migration : string prop;
  verify_auth_challenge_response : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_config) -> ()

let yojson_of_lambda_config =
  (function
   | {
       create_auth_challenge = v_create_auth_challenge;
       custom_email_sender = v_custom_email_sender;
       custom_message = v_custom_message;
       custom_sms_sender = v_custom_sms_sender;
       define_auth_challenge = v_define_auth_challenge;
       kms_key_id = v_kms_key_id;
       post_authentication = v_post_authentication;
       post_confirmation = v_post_confirmation;
       pre_authentication = v_pre_authentication;
       pre_sign_up = v_pre_sign_up;
       pre_token_generation = v_pre_token_generation;
       pre_token_generation_config = v_pre_token_generation_config;
       user_migration = v_user_migration;
       verify_auth_challenge_response =
         v_verify_auth_challenge_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verify_auth_challenge_response
         in
         ("verify_auth_challenge_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_migration
         in
         ("user_migration", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_pre_token_generation
         in
         ("pre_token_generation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pre_sign_up in
         ("pre_sign_up", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pre_authentication
         in
         ("pre_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_post_confirmation
         in
         ("post_confirmation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_post_authentication
         in
         ("post_authentication", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_define_auth_challenge
         in
         ("define_auth_challenge", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_custom_message
         in
         ("custom_message", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_create_auth_challenge
         in
         ("create_auth_challenge", arg) :: bnds
       in
       `Assoc bnds
    : lambda_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_config

[@@@deriving.end]

type schema_attributes__string_attribute_constraints = {
  max_length : string prop;
  min_length : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : schema_attributes__string_attribute_constraints) -> ()

let yojson_of_schema_attributes__string_attribute_constraints =
  (function
   | { max_length = v_max_length; min_length = v_min_length } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_min_length in
         ("min_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_length in
         ("max_length", arg) :: bnds
       in
       `Assoc bnds
    : schema_attributes__string_attribute_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_attributes__string_attribute_constraints

[@@@deriving.end]

type schema_attributes__number_attribute_constraints = {
  max_value : string prop;
  min_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : schema_attributes__number_attribute_constraints) -> ()

let yojson_of_schema_attributes__number_attribute_constraints =
  (function
   | { max_value = v_max_value; min_value = v_min_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_min_value in
         ("min_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_value in
         ("max_value", arg) :: bnds
       in
       `Assoc bnds
    : schema_attributes__number_attribute_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_attributes__number_attribute_constraints

[@@@deriving.end]

type schema_attributes = {
  attribute_data_type : string prop;
  developer_only_attribute : bool prop;
  mutable_ : bool prop; [@key "mutable"]
  name : string prop;
  number_attribute_constraints :
    schema_attributes__number_attribute_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  required : bool prop;
  string_attribute_constraints :
    schema_attributes__string_attribute_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_attributes) -> ()

let yojson_of_schema_attributes =
  (function
   | {
       attribute_data_type = v_attribute_data_type;
       developer_only_attribute = v_developer_only_attribute;
       mutable_ = v_mutable_;
       name = v_name;
       number_attribute_constraints = v_number_attribute_constraints;
       required = v_required;
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
                yojson_of_schema_attributes__string_attribute_constraints)
               v_string_attribute_constraints
           in
           let bnd = "string_attribute_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_number_attribute_constraints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema_attributes__number_attribute_constraints)
               v_number_attribute_constraints
           in
           let bnd = "number_attribute_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_mutable_ in
         ("mutable", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_developer_only_attribute
         in
         ("developer_only_attribute", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_data_type
         in
         ("attribute_data_type", arg) :: bnds
       in
       `Assoc bnds
    : schema_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_attributes

[@@@deriving.end]

type aws_cognito_user_pool = { user_pool_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool) -> ()

let yojson_of_aws_cognito_user_pool =
  (function
   | { user_pool_id = v_user_pool_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool

[@@@deriving.end]

let aws_cognito_user_pool ~user_pool_id () : aws_cognito_user_pool =
  { user_pool_id }

type t = {
  tf_name : string;
  account_recovery_setting : account_recovery_setting list prop;
  admin_create_user_config : admin_create_user_config list prop;
  arn : string prop;
  auto_verified_attributes : string list prop;
  creation_date : string prop;
  custom_domain : string prop;
  deletion_protection : string prop;
  device_configuration : device_configuration list prop;
  domain : string prop;
  email_configuration : email_configuration list prop;
  estimated_number_of_users : float prop;
  id : string prop;
  lambda_config : lambda_config list prop;
  last_modified_date : string prop;
  mfa_configuration : string prop;
  name : string prop;
  schema_attributes : schema_attributes list prop;
  sms_authentication_message : string prop;
  sms_configuration_failure : string prop;
  sms_verification_message : string prop;
  user_pool_id : string prop;
  user_pool_tags : string Tf_core.assoc prop;
  username_attributes : string list prop;
}

let make ~user_pool_id __id =
  let __type = "aws_cognito_user_pool" in
  let __attrs =
    ({
       tf_name = __id;
       account_recovery_setting =
         Prop.computed __type __id "account_recovery_setting";
       admin_create_user_config =
         Prop.computed __type __id "admin_create_user_config";
       arn = Prop.computed __type __id "arn";
       auto_verified_attributes =
         Prop.computed __type __id "auto_verified_attributes";
       creation_date = Prop.computed __type __id "creation_date";
       custom_domain = Prop.computed __type __id "custom_domain";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       device_configuration =
         Prop.computed __type __id "device_configuration";
       domain = Prop.computed __type __id "domain";
       email_configuration =
         Prop.computed __type __id "email_configuration";
       estimated_number_of_users =
         Prop.computed __type __id "estimated_number_of_users";
       id = Prop.computed __type __id "id";
       lambda_config = Prop.computed __type __id "lambda_config";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       mfa_configuration =
         Prop.computed __type __id "mfa_configuration";
       name = Prop.computed __type __id "name";
       schema_attributes =
         Prop.computed __type __id "schema_attributes";
       sms_authentication_message =
         Prop.computed __type __id "sms_authentication_message";
       sms_configuration_failure =
         Prop.computed __type __id "sms_configuration_failure";
       sms_verification_message =
         Prop.computed __type __id "sms_verification_message";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       user_pool_tags = Prop.computed __type __id "user_pool_tags";
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
        (aws_cognito_user_pool ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ~user_pool_id __id =
  let (r : _ Tf_core.resource) = make ~user_pool_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

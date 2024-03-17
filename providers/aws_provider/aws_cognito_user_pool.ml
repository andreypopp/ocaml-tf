(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_pool__account_recovery_setting__recovery_mechanism = {
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__account_recovery_setting__recovery_mechanism *)

type aws_cognito_user_pool__account_recovery_setting = {
  recovery_mechanism :
    aws_cognito_user_pool__account_recovery_setting__recovery_mechanism
    list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__account_recovery_setting *)

type aws_cognito_user_pool__admin_create_user_config__invite_message_template = {
  email_message : string prop option; [@option]  (** email_message *)
  email_subject : string prop option; [@option]  (** email_subject *)
  sms_message : string prop option; [@option]  (** sms_message *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__admin_create_user_config__invite_message_template *)

type aws_cognito_user_pool__admin_create_user_config = {
  allow_admin_create_user_only : bool prop option; [@option]
      (** allow_admin_create_user_only *)
  invite_message_template :
    aws_cognito_user_pool__admin_create_user_config__invite_message_template
    list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__admin_create_user_config *)

type aws_cognito_user_pool__device_configuration = {
  challenge_required_on_new_device : bool prop option; [@option]
      (** challenge_required_on_new_device *)
  device_only_remembered_on_user_prompt : bool prop option; [@option]
      (** device_only_remembered_on_user_prompt *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__device_configuration *)

type aws_cognito_user_pool__email_configuration = {
  configuration_set : string prop option; [@option]
      (** configuration_set *)
  email_sending_account : string prop option; [@option]
      (** email_sending_account *)
  from_email_address : string prop option; [@option]
      (** from_email_address *)
  reply_to_email_address : string prop option; [@option]
      (** reply_to_email_address *)
  source_arn : string prop option; [@option]  (** source_arn *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__email_configuration *)

type aws_cognito_user_pool__lambda_config__custom_email_sender = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__lambda_config__custom_email_sender *)

type aws_cognito_user_pool__lambda_config__custom_sms_sender = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__lambda_config__custom_sms_sender *)

type aws_cognito_user_pool__lambda_config__pre_token_generation_config = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__lambda_config__pre_token_generation_config *)

type aws_cognito_user_pool__lambda_config = {
  create_auth_challenge : string prop option; [@option]
      (** create_auth_challenge *)
  custom_message : string prop option; [@option]
      (** custom_message *)
  define_auth_challenge : string prop option; [@option]
      (** define_auth_challenge *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  post_authentication : string prop option; [@option]
      (** post_authentication *)
  post_confirmation : string prop option; [@option]
      (** post_confirmation *)
  pre_authentication : string prop option; [@option]
      (** pre_authentication *)
  pre_sign_up : string prop option; [@option]  (** pre_sign_up *)
  pre_token_generation : string prop option; [@option]
      (** pre_token_generation *)
  user_migration : string prop option; [@option]
      (** user_migration *)
  verify_auth_challenge_response : string prop option; [@option]
      (** verify_auth_challenge_response *)
  custom_email_sender :
    aws_cognito_user_pool__lambda_config__custom_email_sender list;
  custom_sms_sender :
    aws_cognito_user_pool__lambda_config__custom_sms_sender list;
  pre_token_generation_config :
    aws_cognito_user_pool__lambda_config__pre_token_generation_config
    list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__lambda_config *)

type aws_cognito_user_pool__password_policy = {
  minimum_length : float prop option; [@option]
      (** minimum_length *)
  require_lowercase : bool prop option; [@option]
      (** require_lowercase *)
  require_numbers : bool prop option; [@option]
      (** require_numbers *)
  require_symbols : bool prop option; [@option]
      (** require_symbols *)
  require_uppercase : bool prop option; [@option]
      (** require_uppercase *)
  temporary_password_validity_days : float prop option; [@option]
      (** temporary_password_validity_days *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__password_policy *)

type aws_cognito_user_pool__schema__number_attribute_constraints = {
  max_value : string prop option; [@option]  (** max_value *)
  min_value : string prop option; [@option]  (** min_value *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__schema__number_attribute_constraints *)

type aws_cognito_user_pool__schema__string_attribute_constraints = {
  max_length : string prop option; [@option]  (** max_length *)
  min_length : string prop option; [@option]  (** min_length *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__schema__string_attribute_constraints *)

type aws_cognito_user_pool__schema = {
  attribute_data_type : string prop;  (** attribute_data_type *)
  developer_only_attribute : bool prop option; [@option]
      (** developer_only_attribute *)
  mutable_ : bool prop option; [@option] [@key "mutable"]
      (** mutable *)
  name : string prop;  (** name *)
  required : bool prop option; [@option]  (** required *)
  number_attribute_constraints :
    aws_cognito_user_pool__schema__number_attribute_constraints list;
  string_attribute_constraints :
    aws_cognito_user_pool__schema__string_attribute_constraints list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__schema *)

type aws_cognito_user_pool__sms_configuration = {
  external_id : string prop;  (** external_id *)
  sns_caller_arn : string prop;  (** sns_caller_arn *)
  sns_region : string prop option; [@option]  (** sns_region *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__sms_configuration *)

type aws_cognito_user_pool__software_token_mfa_configuration = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__software_token_mfa_configuration *)

type aws_cognito_user_pool__user_attribute_update_settings = {
  attributes_require_verification_before_update : string prop list;
      (** attributes_require_verification_before_update *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__user_attribute_update_settings *)

type aws_cognito_user_pool__user_pool_add_ons = {
  advanced_security_mode : string prop;  (** advanced_security_mode *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__user_pool_add_ons *)

type aws_cognito_user_pool__username_configuration = {
  case_sensitive : bool prop;  (** case_sensitive *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__username_configuration *)

type aws_cognito_user_pool__verification_message_template = {
  default_email_option : string prop option; [@option]
      (** default_email_option *)
  email_message : string prop option; [@option]  (** email_message *)
  email_message_by_link : string prop option; [@option]
      (** email_message_by_link *)
  email_subject : string prop option; [@option]  (** email_subject *)
  email_subject_by_link : string prop option; [@option]
      (** email_subject_by_link *)
  sms_message : string prop option; [@option]  (** sms_message *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool__verification_message_template *)

type aws_cognito_user_pool = {
  alias_attributes : string prop list option; [@option]
      (** alias_attributes *)
  auto_verified_attributes : string prop list option; [@option]
      (** auto_verified_attributes *)
  deletion_protection : string prop option; [@option]
      (** deletion_protection *)
  email_verification_message : string prop option; [@option]
      (** email_verification_message *)
  email_verification_subject : string prop option; [@option]
      (** email_verification_subject *)
  id : string prop option; [@option]  (** id *)
  mfa_configuration : string prop option; [@option]
      (** mfa_configuration *)
  name : string prop;  (** name *)
  sms_authentication_message : string prop option; [@option]
      (** sms_authentication_message *)
  sms_verification_message : string prop option; [@option]
      (** sms_verification_message *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  username_attributes : string prop list option; [@option]
      (** username_attributes *)
  account_recovery_setting :
    aws_cognito_user_pool__account_recovery_setting list;
  admin_create_user_config :
    aws_cognito_user_pool__admin_create_user_config list;
  device_configuration :
    aws_cognito_user_pool__device_configuration list;
  email_configuration :
    aws_cognito_user_pool__email_configuration list;
  lambda_config : aws_cognito_user_pool__lambda_config list;
  password_policy : aws_cognito_user_pool__password_policy list;
  schema : aws_cognito_user_pool__schema list;
  sms_configuration : aws_cognito_user_pool__sms_configuration list;
  software_token_mfa_configuration :
    aws_cognito_user_pool__software_token_mfa_configuration list;
  user_attribute_update_settings :
    aws_cognito_user_pool__user_attribute_update_settings list;
  user_pool_add_ons : aws_cognito_user_pool__user_pool_add_ons list;
  username_configuration :
    aws_cognito_user_pool__username_configuration list;
  verification_message_template :
    aws_cognito_user_pool__verification_message_template list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool *)

let aws_cognito_user_pool ?alias_attributes ?auto_verified_attributes
    ?deletion_protection ?email_verification_message
    ?email_verification_subject ?id ?mfa_configuration
    ?sms_authentication_message ?sms_verification_message ?tags
    ?tags_all ?username_attributes ~name ~account_recovery_setting
    ~admin_create_user_config ~device_configuration
    ~email_configuration ~lambda_config ~password_policy ~schema
    ~sms_configuration ~software_token_mfa_configuration
    ~user_attribute_update_settings ~user_pool_add_ons
    ~username_configuration ~verification_message_template
    __resource_id =
  let __resource_type = "aws_cognito_user_pool" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_pool __resource);
  ()

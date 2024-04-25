(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type account_recovery_setting__recovery_mechanism

val account_recovery_setting__recovery_mechanism :
  name:string prop ->
  priority:float prop ->
  unit ->
  account_recovery_setting__recovery_mechanism

type account_recovery_setting

val account_recovery_setting :
  recovery_mechanism:
    account_recovery_setting__recovery_mechanism list ->
  unit ->
  account_recovery_setting

type admin_create_user_config__invite_message_template

val admin_create_user_config__invite_message_template :
  ?email_message:string prop ->
  ?email_subject:string prop ->
  ?sms_message:string prop ->
  unit ->
  admin_create_user_config__invite_message_template

type admin_create_user_config

val admin_create_user_config :
  ?allow_admin_create_user_only:bool prop ->
  ?invite_message_template:
    admin_create_user_config__invite_message_template list ->
  unit ->
  admin_create_user_config

type device_configuration

val device_configuration :
  ?challenge_required_on_new_device:bool prop ->
  ?device_only_remembered_on_user_prompt:bool prop ->
  unit ->
  device_configuration

type email_configuration

val email_configuration :
  ?configuration_set:string prop ->
  ?email_sending_account:string prop ->
  ?from_email_address:string prop ->
  ?reply_to_email_address:string prop ->
  ?source_arn:string prop ->
  unit ->
  email_configuration

type lambda_config__custom_email_sender

val lambda_config__custom_email_sender :
  lambda_arn:string prop ->
  lambda_version:string prop ->
  unit ->
  lambda_config__custom_email_sender

type lambda_config__custom_sms_sender

val lambda_config__custom_sms_sender :
  lambda_arn:string prop ->
  lambda_version:string prop ->
  unit ->
  lambda_config__custom_sms_sender

type lambda_config__pre_token_generation_config

val lambda_config__pre_token_generation_config :
  lambda_arn:string prop ->
  lambda_version:string prop ->
  unit ->
  lambda_config__pre_token_generation_config

type lambda_config

val lambda_config :
  ?create_auth_challenge:string prop ->
  ?custom_message:string prop ->
  ?define_auth_challenge:string prop ->
  ?kms_key_id:string prop ->
  ?post_authentication:string prop ->
  ?post_confirmation:string prop ->
  ?pre_authentication:string prop ->
  ?pre_sign_up:string prop ->
  ?pre_token_generation:string prop ->
  ?user_migration:string prop ->
  ?verify_auth_challenge_response:string prop ->
  ?custom_email_sender:lambda_config__custom_email_sender list ->
  ?custom_sms_sender:lambda_config__custom_sms_sender list ->
  ?pre_token_generation_config:
    lambda_config__pre_token_generation_config list ->
  unit ->
  lambda_config

type password_policy

val password_policy :
  ?minimum_length:float prop ->
  ?require_lowercase:bool prop ->
  ?require_numbers:bool prop ->
  ?require_symbols:bool prop ->
  ?require_uppercase:bool prop ->
  ?temporary_password_validity_days:float prop ->
  unit ->
  password_policy

type schema__number_attribute_constraints

val schema__number_attribute_constraints :
  ?max_value:string prop ->
  ?min_value:string prop ->
  unit ->
  schema__number_attribute_constraints

type schema__string_attribute_constraints

val schema__string_attribute_constraints :
  ?max_length:string prop ->
  ?min_length:string prop ->
  unit ->
  schema__string_attribute_constraints

type schema

val schema :
  ?developer_only_attribute:bool prop ->
  ?mutable_:bool prop ->
  ?required:bool prop ->
  ?number_attribute_constraints:
    schema__number_attribute_constraints list ->
  ?string_attribute_constraints:
    schema__string_attribute_constraints list ->
  attribute_data_type:string prop ->
  name:string prop ->
  unit ->
  schema

type sms_configuration

val sms_configuration :
  ?sns_region:string prop ->
  external_id:string prop ->
  sns_caller_arn:string prop ->
  unit ->
  sms_configuration

type software_token_mfa_configuration

val software_token_mfa_configuration :
  enabled:bool prop -> unit -> software_token_mfa_configuration

type user_attribute_update_settings

val user_attribute_update_settings :
  attributes_require_verification_before_update:string prop list ->
  unit ->
  user_attribute_update_settings

type user_pool_add_ons

val user_pool_add_ons :
  advanced_security_mode:string prop -> unit -> user_pool_add_ons

type username_configuration

val username_configuration :
  case_sensitive:bool prop -> unit -> username_configuration

type verification_message_template

val verification_message_template :
  ?default_email_option:string prop ->
  ?email_message:string prop ->
  ?email_message_by_link:string prop ->
  ?email_subject:string prop ->
  ?email_subject_by_link:string prop ->
  ?sms_message:string prop ->
  unit ->
  verification_message_template

type aws_cognito_user_pool

val aws_cognito_user_pool :
  ?alias_attributes:string prop list ->
  ?auto_verified_attributes:string prop list ->
  ?deletion_protection:string prop ->
  ?email_verification_message:string prop ->
  ?email_verification_subject:string prop ->
  ?id:string prop ->
  ?mfa_configuration:string prop ->
  ?sms_authentication_message:string prop ->
  ?sms_verification_message:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username_attributes:string prop list ->
  ?account_recovery_setting:account_recovery_setting list ->
  ?admin_create_user_config:admin_create_user_config list ->
  ?device_configuration:device_configuration list ->
  ?email_configuration:email_configuration list ->
  ?lambda_config:lambda_config list ->
  ?password_policy:password_policy list ->
  ?sms_configuration:sms_configuration list ->
  ?software_token_mfa_configuration:
    software_token_mfa_configuration list ->
  ?user_attribute_update_settings:user_attribute_update_settings list ->
  ?user_pool_add_ons:user_pool_add_ons list ->
  ?username_configuration:username_configuration list ->
  ?verification_message_template:verification_message_template list ->
  name:string prop ->
  schema:schema list ->
  unit ->
  aws_cognito_user_pool

val yojson_of_aws_cognito_user_pool : aws_cognito_user_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  username_attributes : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias_attributes:string prop list ->
  ?auto_verified_attributes:string prop list ->
  ?deletion_protection:string prop ->
  ?email_verification_message:string prop ->
  ?email_verification_subject:string prop ->
  ?id:string prop ->
  ?mfa_configuration:string prop ->
  ?sms_authentication_message:string prop ->
  ?sms_verification_message:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username_attributes:string prop list ->
  ?account_recovery_setting:account_recovery_setting list ->
  ?admin_create_user_config:admin_create_user_config list ->
  ?device_configuration:device_configuration list ->
  ?email_configuration:email_configuration list ->
  ?lambda_config:lambda_config list ->
  ?password_policy:password_policy list ->
  ?sms_configuration:sms_configuration list ->
  ?software_token_mfa_configuration:
    software_token_mfa_configuration list ->
  ?user_attribute_update_settings:user_attribute_update_settings list ->
  ?user_pool_add_ons:user_pool_add_ons list ->
  ?username_configuration:username_configuration list ->
  ?verification_message_template:verification_message_template list ->
  name:string prop ->
  schema:schema list ->
  string ->
  t

val make :
  ?alias_attributes:string prop list ->
  ?auto_verified_attributes:string prop list ->
  ?deletion_protection:string prop ->
  ?email_verification_message:string prop ->
  ?email_verification_subject:string prop ->
  ?id:string prop ->
  ?mfa_configuration:string prop ->
  ?sms_authentication_message:string prop ->
  ?sms_verification_message:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username_attributes:string prop list ->
  ?account_recovery_setting:account_recovery_setting list ->
  ?admin_create_user_config:admin_create_user_config list ->
  ?device_configuration:device_configuration list ->
  ?email_configuration:email_configuration list ->
  ?lambda_config:lambda_config list ->
  ?password_policy:password_policy list ->
  ?sms_configuration:sms_configuration list ->
  ?software_token_mfa_configuration:
    software_token_mfa_configuration list ->
  ?user_attribute_update_settings:user_attribute_update_settings list ->
  ?user_pool_add_ons:user_pool_add_ons list ->
  ?username_configuration:username_configuration list ->
  ?verification_message_template:verification_message_template list ->
  name:string prop ->
  schema:schema list ->
  string ->
  t Tf_core.resource

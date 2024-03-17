(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user_pool__account_recovery_setting__recovery_mechanism

type aws_cognito_user_pool__account_recovery_setting

type aws_cognito_user_pool__admin_create_user_config__invite_message_template

type aws_cognito_user_pool__admin_create_user_config
type aws_cognito_user_pool__device_configuration
type aws_cognito_user_pool__email_configuration
type aws_cognito_user_pool__lambda_config__custom_email_sender
type aws_cognito_user_pool__lambda_config__custom_sms_sender
type aws_cognito_user_pool__lambda_config__pre_token_generation_config
type aws_cognito_user_pool__lambda_config
type aws_cognito_user_pool__password_policy
type aws_cognito_user_pool__schema__number_attribute_constraints
type aws_cognito_user_pool__schema__string_attribute_constraints
type aws_cognito_user_pool__schema
type aws_cognito_user_pool__sms_configuration
type aws_cognito_user_pool__software_token_mfa_configuration
type aws_cognito_user_pool__user_attribute_update_settings
type aws_cognito_user_pool__user_pool_add_ons
type aws_cognito_user_pool__username_configuration
type aws_cognito_user_pool__verification_message_template
type aws_cognito_user_pool

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
  name:string prop ->
  account_recovery_setting:
    aws_cognito_user_pool__account_recovery_setting list ->
  admin_create_user_config:
    aws_cognito_user_pool__admin_create_user_config list ->
  device_configuration:
    aws_cognito_user_pool__device_configuration list ->
  email_configuration:aws_cognito_user_pool__email_configuration list ->
  lambda_config:aws_cognito_user_pool__lambda_config list ->
  password_policy:aws_cognito_user_pool__password_policy list ->
  schema:aws_cognito_user_pool__schema list ->
  sms_configuration:aws_cognito_user_pool__sms_configuration list ->
  software_token_mfa_configuration:
    aws_cognito_user_pool__software_token_mfa_configuration list ->
  user_attribute_update_settings:
    aws_cognito_user_pool__user_attribute_update_settings list ->
  user_pool_add_ons:aws_cognito_user_pool__user_pool_add_ons list ->
  username_configuration:
    aws_cognito_user_pool__username_configuration list ->
  verification_message_template:
    aws_cognito_user_pool__verification_message_template list ->
  string ->
  t

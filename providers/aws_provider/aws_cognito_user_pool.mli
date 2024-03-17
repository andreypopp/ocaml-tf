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

val aws_cognito_user_pool :
  ?alias_attributes:string list ->
  ?auto_verified_attributes:string list ->
  ?deletion_protection:string ->
  ?email_verification_message:string ->
  ?email_verification_subject:string ->
  ?id:string ->
  ?mfa_configuration:string ->
  ?sms_authentication_message:string ->
  ?sms_verification_message:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?username_attributes:string list ->
  name:string ->
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
  unit

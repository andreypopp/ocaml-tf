(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type account_recovery_setting__recovery_mechanism = {
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
}

type account_recovery_setting = {
  recovery_mechanism :
    account_recovery_setting__recovery_mechanism list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** recovery_mechanism *)
}

type admin_create_user_config__invite_message_template = {
  email_message : string prop;  (** email_message *)
  email_subject : string prop;  (** email_subject *)
  sms_message : string prop;  (** sms_message *)
}

type admin_create_user_config = {
  allow_admin_create_user_only : bool prop;
      (** allow_admin_create_user_only *)
  invite_message_template :
    admin_create_user_config__invite_message_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** invite_message_template *)
  unused_account_validity_days : float prop;
      (** unused_account_validity_days *)
}

type device_configuration = {
  challenge_required_on_new_device : bool prop;
      (** challenge_required_on_new_device *)
  device_only_remembered_on_user_prompt : bool prop;
      (** device_only_remembered_on_user_prompt *)
}

type email_configuration = {
  configuration_set : string prop;  (** configuration_set *)
  email_sending_account : string prop;  (** email_sending_account *)
  from : string prop;  (** from *)
  reply_to_email_address : string prop;
      (** reply_to_email_address *)
  source_arn : string prop;  (** source_arn *)
}

type lambda_config__pre_token_generation_config = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}

type lambda_config__custom_sms_sender = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}

type lambda_config__custom_email_sender = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}

type lambda_config = {
  create_auth_challenge : string prop;  (** create_auth_challenge *)
  custom_email_sender : lambda_config__custom_email_sender list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_email_sender *)
  custom_message : string prop;  (** custom_message *)
  custom_sms_sender : lambda_config__custom_sms_sender list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_sms_sender *)
  define_auth_challenge : string prop;  (** define_auth_challenge *)
  kms_key_id : string prop;  (** kms_key_id *)
  post_authentication : string prop;  (** post_authentication *)
  post_confirmation : string prop;  (** post_confirmation *)
  pre_authentication : string prop;  (** pre_authentication *)
  pre_sign_up : string prop;  (** pre_sign_up *)
  pre_token_generation : string prop;  (** pre_token_generation *)
  pre_token_generation_config :
    lambda_config__pre_token_generation_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pre_token_generation_config *)
  user_migration : string prop;  (** user_migration *)
  verify_auth_challenge_response : string prop;
      (** verify_auth_challenge_response *)
}

type schema_attributes__string_attribute_constraints = {
  max_length : string prop;  (** max_length *)
  min_length : string prop;  (** min_length *)
}

type schema_attributes__number_attribute_constraints = {
  max_value : string prop;  (** max_value *)
  min_value : string prop;  (** min_value *)
}

type schema_attributes = {
  attribute_data_type : string prop;  (** attribute_data_type *)
  developer_only_attribute : bool prop;
      (** developer_only_attribute *)
  mutable_ : bool prop; [@key "mutable"]  (** mutable *)
  name : string prop;  (** name *)
  number_attribute_constraints :
    schema_attributes__number_attribute_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** number_attribute_constraints *)
  required : bool prop;  (** required *)
  string_attribute_constraints :
    schema_attributes__string_attribute_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** string_attribute_constraints *)
}

type aws_cognito_user_pool

val aws_cognito_user_pool :
  user_pool_id:string prop -> unit -> aws_cognito_user_pool

val yojson_of_aws_cognito_user_pool : aws_cognito_user_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module -> user_pool_id:string prop -> string -> t

val make : user_pool_id:string prop -> string -> t Tf_core.resource

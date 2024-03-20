(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type account_recovery_setting__recovery_mechanism = {
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
}
[@@deriving yojson_of]
(** account_recovery_setting__recovery_mechanism *)

type account_recovery_setting = {
  recovery_mechanism :
    account_recovery_setting__recovery_mechanism list;
}
[@@deriving yojson_of]
(** account_recovery_setting *)

type admin_create_user_config__invite_message_template = {
  email_message : string prop option; [@option]  (** email_message *)
  email_subject : string prop option; [@option]  (** email_subject *)
  sms_message : string prop option; [@option]  (** sms_message *)
}
[@@deriving yojson_of]
(** admin_create_user_config__invite_message_template *)

type admin_create_user_config = {
  allow_admin_create_user_only : bool prop option; [@option]
      (** allow_admin_create_user_only *)
  invite_message_template :
    admin_create_user_config__invite_message_template list;
}
[@@deriving yojson_of]
(** admin_create_user_config *)

type device_configuration = {
  challenge_required_on_new_device : bool prop option; [@option]
      (** challenge_required_on_new_device *)
  device_only_remembered_on_user_prompt : bool prop option; [@option]
      (** device_only_remembered_on_user_prompt *)
}
[@@deriving yojson_of]
(** device_configuration *)

type email_configuration = {
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
(** email_configuration *)

type lambda_config__custom_email_sender = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}
[@@deriving yojson_of]
(** lambda_config__custom_email_sender *)

type lambda_config__custom_sms_sender = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}
[@@deriving yojson_of]
(** lambda_config__custom_sms_sender *)

type lambda_config__pre_token_generation_config = {
  lambda_arn : string prop;  (** lambda_arn *)
  lambda_version : string prop;  (** lambda_version *)
}
[@@deriving yojson_of]
(** lambda_config__pre_token_generation_config *)

type lambda_config = {
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
  custom_email_sender : lambda_config__custom_email_sender list;
  custom_sms_sender : lambda_config__custom_sms_sender list;
  pre_token_generation_config :
    lambda_config__pre_token_generation_config list;
}
[@@deriving yojson_of]
(** lambda_config *)

type password_policy = {
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
(** password_policy *)

type schema__number_attribute_constraints = {
  max_value : string prop option; [@option]  (** max_value *)
  min_value : string prop option; [@option]  (** min_value *)
}
[@@deriving yojson_of]
(** schema__number_attribute_constraints *)

type schema__string_attribute_constraints = {
  max_length : string prop option; [@option]  (** max_length *)
  min_length : string prop option; [@option]  (** min_length *)
}
[@@deriving yojson_of]
(** schema__string_attribute_constraints *)

type schema = {
  attribute_data_type : string prop;  (** attribute_data_type *)
  developer_only_attribute : bool prop option; [@option]
      (** developer_only_attribute *)
  mutable_ : bool prop option; [@option] [@key "mutable"]
      (** mutable *)
  name : string prop;  (** name *)
  required : bool prop option; [@option]  (** required *)
  number_attribute_constraints :
    schema__number_attribute_constraints list;
  string_attribute_constraints :
    schema__string_attribute_constraints list;
}
[@@deriving yojson_of]
(** schema *)

type sms_configuration = {
  external_id : string prop;  (** external_id *)
  sns_caller_arn : string prop;  (** sns_caller_arn *)
  sns_region : string prop option; [@option]  (** sns_region *)
}
[@@deriving yojson_of]
(** sms_configuration *)

type software_token_mfa_configuration = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** software_token_mfa_configuration *)

type user_attribute_update_settings = {
  attributes_require_verification_before_update : string prop list;
      (** attributes_require_verification_before_update *)
}
[@@deriving yojson_of]
(** user_attribute_update_settings *)

type user_pool_add_ons = {
  advanced_security_mode : string prop;  (** advanced_security_mode *)
}
[@@deriving yojson_of]
(** user_pool_add_ons *)

type username_configuration = {
  case_sensitive : bool prop;  (** case_sensitive *)
}
[@@deriving yojson_of]
(** username_configuration *)

type verification_message_template = {
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
(** verification_message_template *)

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
  account_recovery_setting : account_recovery_setting list;
  admin_create_user_config : admin_create_user_config list;
  device_configuration : device_configuration list;
  email_configuration : email_configuration list;
  lambda_config : lambda_config list;
  password_policy : password_policy list;
  schema : schema list;
  sms_configuration : sms_configuration list;
  software_token_mfa_configuration :
    software_token_mfa_configuration list;
  user_attribute_update_settings :
    user_attribute_update_settings list;
  user_pool_add_ons : user_pool_add_ons list;
  username_configuration : username_configuration list;
  verification_message_template : verification_message_template list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool *)

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
    ~invite_message_template () : admin_create_user_config =
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
    ?verify_auth_challenge_response ~custom_email_sender
    ~custom_sms_sender ~pre_token_generation_config () :
    lambda_config =
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
    ~attribute_data_type ~name ~number_attribute_constraints
    ~string_attribute_constraints () : schema =
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
    ?tags_all ?username_attributes ~name ~account_recovery_setting
    ~admin_create_user_config ~device_configuration
    ~email_configuration ~lambda_config ~password_policy ~schema
    ~sms_configuration ~software_token_mfa_configuration
    ~user_attribute_update_settings ~user_pool_add_ons
    ~username_configuration ~verification_message_template () :
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

let make ?alias_attributes ?auto_verified_attributes
    ?deletion_protection ?email_verification_message
    ?email_verification_subject ?id ?mfa_configuration
    ?sms_authentication_message ?sms_verification_message ?tags
    ?tags_all ?username_attributes ~name ~account_recovery_setting
    ~admin_create_user_config ~device_configuration
    ~email_configuration ~lambda_config ~password_policy ~schema
    ~sms_configuration ~software_token_mfa_configuration
    ~user_attribute_update_settings ~user_pool_add_ons
    ~username_configuration ~verification_message_template __id =
  let __type = "aws_cognito_user_pool" in
  let __attrs =
    ({
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
           ?username_attributes ~name ~account_recovery_setting
           ~admin_create_user_config ~device_configuration
           ~email_configuration ~lambda_config ~password_policy
           ~schema ~sms_configuration
           ~software_token_mfa_configuration
           ~user_attribute_update_settings ~user_pool_add_ons
           ~username_configuration ~verification_message_template ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_attributes ?auto_verified_attributes
    ?deletion_protection ?email_verification_message
    ?email_verification_subject ?id ?mfa_configuration
    ?sms_authentication_message ?sms_verification_message ?tags
    ?tags_all ?username_attributes ~name ~account_recovery_setting
    ~admin_create_user_config ~device_configuration
    ~email_configuration ~lambda_config ~password_policy ~schema
    ~sms_configuration ~software_token_mfa_configuration
    ~user_attribute_update_settings ~user_pool_add_ons
    ~username_configuration ~verification_message_template __id =
  let (r : _ Tf_core.resource) =
    make ?alias_attributes ?auto_verified_attributes
      ?deletion_protection ?email_verification_message
      ?email_verification_subject ?id ?mfa_configuration
      ?sms_authentication_message ?sms_verification_message ?tags
      ?tags_all ?username_attributes ~name ~account_recovery_setting
      ~admin_create_user_config ~device_configuration
      ~email_configuration ~lambda_config ~password_policy ~schema
      ~sms_configuration ~software_token_mfa_configuration
      ~user_attribute_update_settings ~user_pool_add_ons
      ~username_configuration ~verification_message_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

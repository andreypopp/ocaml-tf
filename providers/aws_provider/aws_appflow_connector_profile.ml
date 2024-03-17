(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__amplitude = {
  api_key : string;  (** api_key *)
  secret_key : string;  (** secret_key *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__amplitude *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__api_key = {
  api_key : string;  (** api_key *)
  api_secret_key : string option; [@option]  (** api_secret_key *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__api_key *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__basic = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__basic *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__custom = {
  credentials_map : (string * string) list option; [@option]
      (** credentials_map *)
  custom_authentication_type : string;
      (** custom_authentication_type *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__custom *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__oauth2 = {
  access_token : string option; [@option]  (** access_token *)
  client_id : string option; [@option]  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
  refresh_token : string option; [@option]  (** refresh_token *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__oauth2 *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector = {
  authentication_type : string;  (** authentication_type *)
  api_key :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__api_key
    list;
  basic :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__basic
    list;
  custom :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__custom
    list;
  oauth2 :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__datadog = {
  api_key : string;  (** api_key *)
  application_key : string;  (** application_key *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__datadog *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__dynatrace = {
  api_token : string;  (** api_token *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__dynatrace *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__google_analytics__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__google_analytics__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__google_analytics = {
  access_token : string option; [@option]  (** access_token *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  refresh_token : string option; [@option]  (** refresh_token *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__google_analytics *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__honeycode__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__honeycode__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__honeycode = {
  access_token : string option; [@option]  (** access_token *)
  refresh_token : string option; [@option]  (** refresh_token *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__honeycode *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__infor_nexus = {
  access_key_id : string;  (** access_key_id *)
  datakey : string;  (** datakey *)
  secret_access_key : string;  (** secret_access_key *)
  user_id : string;  (** user_id *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__infor_nexus *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__marketo__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__marketo__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__marketo = {
  access_token : string option; [@option]  (** access_token *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__marketo__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__marketo *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__redshift = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__redshift *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__salesforce__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__salesforce__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__salesforce = {
  access_token : string option; [@option]  (** access_token *)
  client_credentials_arn : string option; [@option]
      (** client_credentials_arn *)
  jwt_token : string option; [@option]  (** jwt_token *)
  oauth2_grant_type : string option; [@option]
      (** oauth2_grant_type *)
  refresh_token : string option; [@option]  (** refresh_token *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__salesforce *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials = {
  access_token : string option; [@option]  (** access_token *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  refresh_token : string option; [@option]  (** refresh_token *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data = {
  basic_auth_credentials :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    list;
  oauth_credentials :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__service_now = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__service_now *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__singular = {
  api_key : string;  (** api_key *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__singular *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__slack__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__slack__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__slack = {
  access_token : string option; [@option]  (** access_token *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__slack__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__slack *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__snowflake = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__snowflake *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__trendmicro = {
  api_secret_key : string;  (** api_secret_key *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__trendmicro *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__veeva = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__veeva *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__zendesk__oauth_request = {
  auth_code : string option; [@option]  (** auth_code *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__zendesk__oauth_request *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__zendesk = {
  access_token : string option; [@option]  (** access_token *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_request :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__zendesk *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials = {
  amplitude :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__amplitude
    list;
  custom_connector :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__custom_connector
    list;
  datadog :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__datadog
    list;
  dynatrace :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__dynatrace
    list;
  google_analytics :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__google_analytics
    list;
  honeycode :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__honeycode
    list;
  infor_nexus :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__infor_nexus
    list;
  marketo :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__marketo
    list;
  redshift :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__redshift
    list;
  salesforce :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__salesforce
    list;
  sapo_data :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__sapo_data
    list;
  service_now :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__service_now
    list;
  singular :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__singular
    list;
  slack :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__slack
    list;
  snowflake :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__snowflake
    list;
  trendmicro :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__trendmicro
    list;
  veeva :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__veeva
    list;
  zendesk :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials__zendesk
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__amplitude =
  unit
[@@deriving yojson_of]

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties = {
  oauth2_grant_type : string;  (** oauth2_grant_type *)
  token_url : string;  (** token_url *)
  token_url_custom_properties : (string * string) list option;
      [@option]
      (** token_url_custom_properties *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__custom_connector = {
  profile_properties : (string * string) list option; [@option]
      (** profile_properties *)
  oauth2_properties :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__custom_connector *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__datadog = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__datadog *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__dynatrace = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__dynatrace *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__google_analytics =
  unit
[@@deriving yojson_of]

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__honeycode =
  unit
[@@deriving yojson_of]

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__infor_nexus = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__infor_nexus *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__marketo = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__marketo *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__redshift = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  cluster_identifier : string option; [@option]
      (** cluster_identifier *)
  data_api_role_arn : string option; [@option]
      (** data_api_role_arn *)
  database_name : string option; [@option]  (** database_name *)
  database_url : string option; [@option]  (** database_url *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__redshift *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__salesforce = {
  instance_url : string option; [@option]  (** instance_url *)
  is_sandbox_environment : bool option; [@option]
      (** is_sandbox_environment *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__salesforce *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__sapo_data__oauth_properties = {
  auth_code_url : string;  (** auth_code_url *)
  oauth_scopes : string list;  (** oauth_scopes *)
  token_url : string;  (** token_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__sapo_data__oauth_properties *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__sapo_data = {
  application_host_url : string;  (** application_host_url *)
  application_service_path : string;  (** application_service_path *)
  client_number : string;  (** client_number *)
  logon_language : string option; [@option]  (** logon_language *)
  port_number : float;  (** port_number *)
  private_link_service_name : string option; [@option]
      (** private_link_service_name *)
  oauth_properties :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__sapo_data *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__service_now = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__service_now *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__singular =
  unit
[@@deriving yojson_of]

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__slack = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__slack *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__snowflake = {
  account_name : string option; [@option]  (** account_name *)
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  private_link_service_name : string option; [@option]
      (** private_link_service_name *)
  region : string option; [@option]  (** region *)
  stage : string;  (** stage *)
  warehouse : string;  (** warehouse *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__snowflake *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__trendmicro =
  unit
[@@deriving yojson_of]

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__veeva = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__veeva *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__zendesk = {
  instance_url : string;  (** instance_url *)
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__zendesk *)

type aws_appflow_connector_profile__connector_profile_config__connector_profile_properties = {
  amplitude :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__amplitude
    list;
  custom_connector :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__custom_connector
    list;
  datadog :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__datadog
    list;
  dynatrace :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__dynatrace
    list;
  google_analytics :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__google_analytics
    list;
  honeycode :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__honeycode
    list;
  infor_nexus :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__infor_nexus
    list;
  marketo :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__marketo
    list;
  redshift :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__redshift
    list;
  salesforce :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__salesforce
    list;
  sapo_data :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__sapo_data
    list;
  service_now :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__service_now
    list;
  singular :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__singular
    list;
  slack :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__slack
    list;
  snowflake :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__snowflake
    list;
  trendmicro :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__trendmicro
    list;
  veeva :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__veeva
    list;
  zendesk :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties__zendesk
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config__connector_profile_properties *)

type aws_appflow_connector_profile__connector_profile_config = {
  connector_profile_credentials :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_credentials
    list;
  connector_profile_properties :
    aws_appflow_connector_profile__connector_profile_config__connector_profile_properties
    list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile__connector_profile_config *)

type aws_appflow_connector_profile = {
  connection_mode : string;  (** connection_mode *)
  connector_label : string option; [@option]  (** connector_label *)
  connector_type : string;  (** connector_type *)
  name : string;  (** name *)
  connector_profile_config :
    aws_appflow_connector_profile__connector_profile_config list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile *)

let aws_appflow_connector_profile ?connector_label ~connection_mode
    ~connector_type ~name ~connector_profile_config __resource_id =
  let __resource_type = "aws_appflow_connector_profile" in
  let __resource =
    {
      connection_mode;
      connector_label;
      connector_type;
      name;
      connector_profile_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appflow_connector_profile __resource);
  ()

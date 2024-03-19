(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type connector_profile_config__connector_profile_credentials__amplitude = {
  api_key : string prop;  (** api_key *)
  secret_key : string prop;  (** secret_key *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__amplitude *)

type connector_profile_config__connector_profile_credentials__custom_connector__api_key = {
  api_key : string prop;  (** api_key *)
  api_secret_key : string prop option; [@option]
      (** api_secret_key *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__custom_connector__api_key *)

type connector_profile_config__connector_profile_credentials__custom_connector__basic = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__custom_connector__basic *)

type connector_profile_config__connector_profile_credentials__custom_connector__custom = {
  credentials_map : (string * string prop) list option; [@option]
      (** credentials_map *)
  custom_authentication_type : string prop;
      (** custom_authentication_type *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__custom_connector__custom *)

type connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request *)

type connector_profile_config__connector_profile_credentials__custom_connector__oauth2 = {
  access_token : string prop option; [@option]  (** access_token *)
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__custom_connector__oauth2 *)

type connector_profile_config__connector_profile_credentials__custom_connector = {
  authentication_type : string prop;  (** authentication_type *)
  api_key :
    connector_profile_config__connector_profile_credentials__custom_connector__api_key
    list;
  basic :
    connector_profile_config__connector_profile_credentials__custom_connector__basic
    list;
  custom :
    connector_profile_config__connector_profile_credentials__custom_connector__custom
    list;
  oauth2 :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__custom_connector *)

type connector_profile_config__connector_profile_credentials__datadog = {
  api_key : string prop;  (** api_key *)
  application_key : string prop;  (** application_key *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__datadog *)

type connector_profile_config__connector_profile_credentials__dynatrace = {
  api_token : string prop;  (** api_token *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__dynatrace *)

type connector_profile_config__connector_profile_credentials__google_analytics__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__google_analytics__oauth_request *)

type connector_profile_config__connector_profile_credentials__google_analytics = {
  access_token : string prop option; [@option]  (** access_token *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__google_analytics *)

type connector_profile_config__connector_profile_credentials__honeycode__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__honeycode__oauth_request *)

type connector_profile_config__connector_profile_credentials__honeycode = {
  access_token : string prop option; [@option]  (** access_token *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__honeycode *)

type connector_profile_config__connector_profile_credentials__infor_nexus = {
  access_key_id : string prop;  (** access_key_id *)
  datakey : string prop;  (** datakey *)
  secret_access_key : string prop;  (** secret_access_key *)
  user_id : string prop;  (** user_id *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__infor_nexus *)

type connector_profile_config__connector_profile_credentials__marketo__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__marketo__oauth_request *)

type connector_profile_config__connector_profile_credentials__marketo = {
  access_token : string prop option; [@option]  (** access_token *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__marketo__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__marketo *)

type connector_profile_config__connector_profile_credentials__redshift = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__redshift *)

type connector_profile_config__connector_profile_credentials__salesforce__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__salesforce__oauth_request *)

type connector_profile_config__connector_profile_credentials__salesforce = {
  access_token : string prop option; [@option]  (** access_token *)
  client_credentials_arn : string prop option; [@option]
      (** client_credentials_arn *)
  jwt_token : string prop option; [@option]  (** jwt_token *)
  oauth2_grant_type : string prop option; [@option]
      (** oauth2_grant_type *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__salesforce *)

type connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials *)

type connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request *)

type connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials = {
  access_token : string prop option; [@option]  (** access_token *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials *)

type connector_profile_config__connector_profile_credentials__sapo_data = {
  basic_auth_credentials :
    connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    list;
  oauth_credentials :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__sapo_data *)

type connector_profile_config__connector_profile_credentials__service_now = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__service_now *)

type connector_profile_config__connector_profile_credentials__singular = {
  api_key : string prop;  (** api_key *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__singular *)

type connector_profile_config__connector_profile_credentials__slack__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__slack__oauth_request *)

type connector_profile_config__connector_profile_credentials__slack = {
  access_token : string prop option; [@option]  (** access_token *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__slack__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__slack *)

type connector_profile_config__connector_profile_credentials__snowflake = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__snowflake *)

type connector_profile_config__connector_profile_credentials__trendmicro = {
  api_secret_key : string prop;  (** api_secret_key *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__trendmicro *)

type connector_profile_config__connector_profile_credentials__veeva = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__veeva *)

type connector_profile_config__connector_profile_credentials__zendesk__oauth_request = {
  auth_code : string prop option; [@option]  (** auth_code *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__zendesk__oauth_request *)

type connector_profile_config__connector_profile_credentials__zendesk = {
  access_token : string prop option; [@option]  (** access_token *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_request :
    connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials__zendesk *)

type connector_profile_config__connector_profile_credentials = {
  amplitude :
    connector_profile_config__connector_profile_credentials__amplitude
    list;
  custom_connector :
    connector_profile_config__connector_profile_credentials__custom_connector
    list;
  datadog :
    connector_profile_config__connector_profile_credentials__datadog
    list;
  dynatrace :
    connector_profile_config__connector_profile_credentials__dynatrace
    list;
  google_analytics :
    connector_profile_config__connector_profile_credentials__google_analytics
    list;
  honeycode :
    connector_profile_config__connector_profile_credentials__honeycode
    list;
  infor_nexus :
    connector_profile_config__connector_profile_credentials__infor_nexus
    list;
  marketo :
    connector_profile_config__connector_profile_credentials__marketo
    list;
  redshift :
    connector_profile_config__connector_profile_credentials__redshift
    list;
  salesforce :
    connector_profile_config__connector_profile_credentials__salesforce
    list;
  sapo_data :
    connector_profile_config__connector_profile_credentials__sapo_data
    list;
  service_now :
    connector_profile_config__connector_profile_credentials__service_now
    list;
  singular :
    connector_profile_config__connector_profile_credentials__singular
    list;
  slack :
    connector_profile_config__connector_profile_credentials__slack
    list;
  snowflake :
    connector_profile_config__connector_profile_credentials__snowflake
    list;
  trendmicro :
    connector_profile_config__connector_profile_credentials__trendmicro
    list;
  veeva :
    connector_profile_config__connector_profile_credentials__veeva
    list;
  zendesk :
    connector_profile_config__connector_profile_credentials__zendesk
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_credentials *)

type connector_profile_config__connector_profile_properties__amplitude =
  unit
[@@deriving yojson_of]

type connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties = {
  oauth2_grant_type : string prop;  (** oauth2_grant_type *)
  token_url : string prop;  (** token_url *)
  token_url_custom_properties : (string * string prop) list option;
      [@option]
      (** token_url_custom_properties *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties *)

type connector_profile_config__connector_profile_properties__custom_connector = {
  profile_properties : (string * string prop) list option; [@option]
      (** profile_properties *)
  oauth2_properties :
    connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__custom_connector *)

type connector_profile_config__connector_profile_properties__datadog = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__datadog *)

type connector_profile_config__connector_profile_properties__dynatrace = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__dynatrace *)

type connector_profile_config__connector_profile_properties__google_analytics =
  unit
[@@deriving yojson_of]

type connector_profile_config__connector_profile_properties__honeycode =
  unit
[@@deriving yojson_of]

type connector_profile_config__connector_profile_properties__infor_nexus = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__infor_nexus *)

type connector_profile_config__connector_profile_properties__marketo = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__marketo *)

type connector_profile_config__connector_profile_properties__redshift = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  cluster_identifier : string prop option; [@option]
      (** cluster_identifier *)
  data_api_role_arn : string prop option; [@option]
      (** data_api_role_arn *)
  database_name : string prop option; [@option]  (** database_name *)
  database_url : string prop option; [@option]  (** database_url *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__redshift *)

type connector_profile_config__connector_profile_properties__salesforce = {
  instance_url : string prop option; [@option]  (** instance_url *)
  is_sandbox_environment : bool prop option; [@option]
      (** is_sandbox_environment *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__salesforce *)

type connector_profile_config__connector_profile_properties__sapo_data__oauth_properties = {
  auth_code_url : string prop;  (** auth_code_url *)
  oauth_scopes : string prop list;  (** oauth_scopes *)
  token_url : string prop;  (** token_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__sapo_data__oauth_properties *)

type connector_profile_config__connector_profile_properties__sapo_data = {
  application_host_url : string prop;  (** application_host_url *)
  application_service_path : string prop;
      (** application_service_path *)
  client_number : string prop;  (** client_number *)
  logon_language : string prop option; [@option]
      (** logon_language *)
  port_number : float prop;  (** port_number *)
  private_link_service_name : string prop option; [@option]
      (** private_link_service_name *)
  oauth_properties :
    connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__sapo_data *)

type connector_profile_config__connector_profile_properties__service_now = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__service_now *)

type connector_profile_config__connector_profile_properties__singular =
  unit
[@@deriving yojson_of]

type connector_profile_config__connector_profile_properties__slack = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__slack *)

type connector_profile_config__connector_profile_properties__snowflake = {
  account_name : string prop option; [@option]  (** account_name *)
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  private_link_service_name : string prop option; [@option]
      (** private_link_service_name *)
  region : string prop option; [@option]  (** region *)
  stage : string prop;  (** stage *)
  warehouse : string prop;  (** warehouse *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__snowflake *)

type connector_profile_config__connector_profile_properties__trendmicro =
  unit
[@@deriving yojson_of]

type connector_profile_config__connector_profile_properties__veeva = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__veeva *)

type connector_profile_config__connector_profile_properties__zendesk = {
  instance_url : string prop;  (** instance_url *)
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties__zendesk *)

type connector_profile_config__connector_profile_properties = {
  amplitude :
    connector_profile_config__connector_profile_properties__amplitude
    list;
  custom_connector :
    connector_profile_config__connector_profile_properties__custom_connector
    list;
  datadog :
    connector_profile_config__connector_profile_properties__datadog
    list;
  dynatrace :
    connector_profile_config__connector_profile_properties__dynatrace
    list;
  google_analytics :
    connector_profile_config__connector_profile_properties__google_analytics
    list;
  honeycode :
    connector_profile_config__connector_profile_properties__honeycode
    list;
  infor_nexus :
    connector_profile_config__connector_profile_properties__infor_nexus
    list;
  marketo :
    connector_profile_config__connector_profile_properties__marketo
    list;
  redshift :
    connector_profile_config__connector_profile_properties__redshift
    list;
  salesforce :
    connector_profile_config__connector_profile_properties__salesforce
    list;
  sapo_data :
    connector_profile_config__connector_profile_properties__sapo_data
    list;
  service_now :
    connector_profile_config__connector_profile_properties__service_now
    list;
  singular :
    connector_profile_config__connector_profile_properties__singular
    list;
  slack :
    connector_profile_config__connector_profile_properties__slack
    list;
  snowflake :
    connector_profile_config__connector_profile_properties__snowflake
    list;
  trendmicro :
    connector_profile_config__connector_profile_properties__trendmicro
    list;
  veeva :
    connector_profile_config__connector_profile_properties__veeva
    list;
  zendesk :
    connector_profile_config__connector_profile_properties__zendesk
    list;
}
[@@deriving yojson_of]
(** connector_profile_config__connector_profile_properties *)

type connector_profile_config = {
  connector_profile_credentials :
    connector_profile_config__connector_profile_credentials list;
  connector_profile_properties :
    connector_profile_config__connector_profile_properties list;
}
[@@deriving yojson_of]
(** connector_profile_config *)

type aws_appflow_connector_profile = {
  connection_mode : string prop;  (** connection_mode *)
  connector_label : string prop option; [@option]
      (** connector_label *)
  connector_type : string prop;  (** connector_type *)
  id : string prop option; [@option]  (** id *)
  kms_arn : string prop option; [@option]  (** kms_arn *)
  name : string prop;  (** name *)
  connector_profile_config : connector_profile_config list;
}
[@@deriving yojson_of]
(** aws_appflow_connector_profile *)

let connector_profile_config__connector_profile_credentials__amplitude
    ~api_key ~secret_key () :
    connector_profile_config__connector_profile_credentials__amplitude
    =
  { api_key; secret_key }

let connector_profile_config__connector_profile_credentials__custom_connector__api_key
    ?api_secret_key ~api_key () :
    connector_profile_config__connector_profile_credentials__custom_connector__api_key
    =
  { api_key; api_secret_key }

let connector_profile_config__connector_profile_credentials__custom_connector__basic
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__custom_connector__basic
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__custom_connector__custom
    ?credentials_map ~custom_authentication_type () :
    connector_profile_config__connector_profile_credentials__custom_connector__custom
    =
  { credentials_map; custom_authentication_type }

let connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    ?access_token ?client_id ?client_secret ?refresh_token
    ~oauth_request () :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    =
  {
    access_token;
    client_id;
    client_secret;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__custom_connector
    ~authentication_type ~api_key ~basic ~custom ~oauth2 () :
    connector_profile_config__connector_profile_credentials__custom_connector
    =
  { authentication_type; api_key; basic; custom; oauth2 }

let connector_profile_config__connector_profile_credentials__datadog
    ~api_key ~application_key () :
    connector_profile_config__connector_profile_credentials__datadog
    =
  { api_key; application_key }

let connector_profile_config__connector_profile_credentials__dynatrace
    ~api_token () :
    connector_profile_config__connector_profile_credentials__dynatrace
    =
  { api_token }

let connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__google_analytics
    ?access_token ?refresh_token ~client_id ~client_secret
    ~oauth_request () :
    connector_profile_config__connector_profile_credentials__google_analytics
    =
  {
    access_token;
    client_id;
    client_secret;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__honeycode
    ?access_token ?refresh_token ~oauth_request () :
    connector_profile_config__connector_profile_credentials__honeycode
    =
  { access_token; refresh_token; oauth_request }

let connector_profile_config__connector_profile_credentials__infor_nexus
    ~access_key_id ~datakey ~secret_access_key ~user_id () :
    connector_profile_config__connector_profile_credentials__infor_nexus
    =
  { access_key_id; datakey; secret_access_key; user_id }

let connector_profile_config__connector_profile_credentials__marketo__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__marketo__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__marketo
    ?access_token ~client_id ~client_secret ~oauth_request () :
    connector_profile_config__connector_profile_credentials__marketo
    =
  { access_token; client_id; client_secret; oauth_request }

let connector_profile_config__connector_profile_credentials__redshift
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__redshift
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__salesforce
    ?access_token ?client_credentials_arn ?jwt_token
    ?oauth2_grant_type ?refresh_token ~oauth_request () :
    connector_profile_config__connector_profile_credentials__salesforce
    =
  {
    access_token;
    client_credentials_arn;
    jwt_token;
    oauth2_grant_type;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    ?access_token ?refresh_token ~client_id ~client_secret
    ~oauth_request () :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    =
  {
    access_token;
    client_id;
    client_secret;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__sapo_data
    ~basic_auth_credentials ~oauth_credentials () :
    connector_profile_config__connector_profile_credentials__sapo_data
    =
  { basic_auth_credentials; oauth_credentials }

let connector_profile_config__connector_profile_credentials__service_now
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__service_now
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__singular
    ~api_key () :
    connector_profile_config__connector_profile_credentials__singular
    =
  { api_key }

let connector_profile_config__connector_profile_credentials__slack__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__slack__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__slack
    ?access_token ~client_id ~client_secret ~oauth_request () :
    connector_profile_config__connector_profile_credentials__slack =
  { access_token; client_id; client_secret; oauth_request }

let connector_profile_config__connector_profile_credentials__snowflake
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__snowflake
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__trendmicro
    ~api_secret_key () :
    connector_profile_config__connector_profile_credentials__trendmicro
    =
  { api_secret_key }

let connector_profile_config__connector_profile_credentials__veeva
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__veeva =
  { password; username }

let connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__zendesk
    ?access_token ~client_id ~client_secret ~oauth_request () :
    connector_profile_config__connector_profile_credentials__zendesk
    =
  { access_token; client_id; client_secret; oauth_request }

let connector_profile_config__connector_profile_credentials
    ~amplitude ~custom_connector ~datadog ~dynatrace
    ~google_analytics ~honeycode ~infor_nexus ~marketo ~redshift
    ~salesforce ~sapo_data ~service_now ~singular ~slack ~snowflake
    ~trendmicro ~veeva ~zendesk () :
    connector_profile_config__connector_profile_credentials =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    honeycode;
    infor_nexus;
    marketo;
    redshift;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    snowflake;
    trendmicro;
    veeva;
    zendesk;
  }

let connector_profile_config__connector_profile_properties__amplitude
    () =
  ()

let connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    ?token_url_custom_properties ~oauth2_grant_type ~token_url () :
    connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    =
  { oauth2_grant_type; token_url; token_url_custom_properties }

let connector_profile_config__connector_profile_properties__custom_connector
    ?profile_properties ~oauth2_properties () :
    connector_profile_config__connector_profile_properties__custom_connector
    =
  { profile_properties; oauth2_properties }

let connector_profile_config__connector_profile_properties__datadog
    ~instance_url () :
    connector_profile_config__connector_profile_properties__datadog =
  { instance_url }

let connector_profile_config__connector_profile_properties__dynatrace
    ~instance_url () :
    connector_profile_config__connector_profile_properties__dynatrace
    =
  { instance_url }

let connector_profile_config__connector_profile_properties__google_analytics
    () =
  ()

let connector_profile_config__connector_profile_properties__honeycode
    () =
  ()

let connector_profile_config__connector_profile_properties__infor_nexus
    ~instance_url () :
    connector_profile_config__connector_profile_properties__infor_nexus
    =
  { instance_url }

let connector_profile_config__connector_profile_properties__marketo
    ~instance_url () :
    connector_profile_config__connector_profile_properties__marketo =
  { instance_url }

let connector_profile_config__connector_profile_properties__redshift
    ?bucket_prefix ?cluster_identifier ?data_api_role_arn
    ?database_name ?database_url ~bucket_name ~role_arn () :
    connector_profile_config__connector_profile_properties__redshift
    =
  {
    bucket_name;
    bucket_prefix;
    cluster_identifier;
    data_api_role_arn;
    database_name;
    database_url;
    role_arn;
  }

let connector_profile_config__connector_profile_properties__salesforce
    ?instance_url ?is_sandbox_environment () :
    connector_profile_config__connector_profile_properties__salesforce
    =
  { instance_url; is_sandbox_environment }

let connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    ~auth_code_url ~oauth_scopes ~token_url () :
    connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    =
  { auth_code_url; oauth_scopes; token_url }

let connector_profile_config__connector_profile_properties__sapo_data
    ?logon_language ?private_link_service_name ~application_host_url
    ~application_service_path ~client_number ~port_number
    ~oauth_properties () :
    connector_profile_config__connector_profile_properties__sapo_data
    =
  {
    application_host_url;
    application_service_path;
    client_number;
    logon_language;
    port_number;
    private_link_service_name;
    oauth_properties;
  }

let connector_profile_config__connector_profile_properties__service_now
    ~instance_url () :
    connector_profile_config__connector_profile_properties__service_now
    =
  { instance_url }

let connector_profile_config__connector_profile_properties__singular
    () =
  ()

let connector_profile_config__connector_profile_properties__slack
    ~instance_url () :
    connector_profile_config__connector_profile_properties__slack =
  { instance_url }

let connector_profile_config__connector_profile_properties__snowflake
    ?account_name ?bucket_prefix ?private_link_service_name ?region
    ~bucket_name ~stage ~warehouse () :
    connector_profile_config__connector_profile_properties__snowflake
    =
  {
    account_name;
    bucket_name;
    bucket_prefix;
    private_link_service_name;
    region;
    stage;
    warehouse;
  }

let connector_profile_config__connector_profile_properties__trendmicro
    () =
  ()

let connector_profile_config__connector_profile_properties__veeva
    ~instance_url () :
    connector_profile_config__connector_profile_properties__veeva =
  { instance_url }

let connector_profile_config__connector_profile_properties__zendesk
    ~instance_url () :
    connector_profile_config__connector_profile_properties__zendesk =
  { instance_url }

let connector_profile_config__connector_profile_properties ~amplitude
    ~custom_connector ~datadog ~dynatrace ~google_analytics
    ~honeycode ~infor_nexus ~marketo ~redshift ~salesforce ~sapo_data
    ~service_now ~singular ~slack ~snowflake ~trendmicro ~veeva
    ~zendesk () :
    connector_profile_config__connector_profile_properties =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    honeycode;
    infor_nexus;
    marketo;
    redshift;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    snowflake;
    trendmicro;
    veeva;
    zendesk;
  }

let connector_profile_config ~connector_profile_credentials
    ~connector_profile_properties () : connector_profile_config =
  { connector_profile_credentials; connector_profile_properties }

let aws_appflow_connector_profile ?connector_label ?id ?kms_arn
    ~connection_mode ~connector_type ~name ~connector_profile_config
    () : aws_appflow_connector_profile =
  {
    connection_mode;
    connector_label;
    connector_type;
    id;
    kms_arn;
    name;
    connector_profile_config;
  }

type t = {
  arn : string prop;
  connection_mode : string prop;
  connector_label : string prop;
  connector_type : string prop;
  credentials_arn : string prop;
  id : string prop;
  kms_arn : string prop;
  name : string prop;
}

let register ?tf_module ?connector_label ?id ?kms_arn
    ~connection_mode ~connector_type ~name ~connector_profile_config
    __resource_id =
  let __resource_type = "aws_appflow_connector_profile" in
  let __resource =
    aws_appflow_connector_profile ?connector_label ?id ?kms_arn
      ~connection_mode ~connector_type ~name
      ~connector_profile_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appflow_connector_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connection_mode =
         Prop.computed __resource_type __resource_id
           "connection_mode";
       connector_label =
         Prop.computed __resource_type __resource_id
           "connector_label";
       connector_type =
         Prop.computed __resource_type __resource_id "connector_type";
       credentials_arn =
         Prop.computed __resource_type __resource_id
           "credentials_arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_arn =
         Prop.computed __resource_type __resource_id "kms_arn";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes

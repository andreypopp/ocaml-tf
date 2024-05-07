(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connector_profile_config__connector_profile_credentials__amplitude

val connector_profile_config__connector_profile_credentials__amplitude :
  api_key:string prop ->
  secret_key:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__amplitude

type connector_profile_config__connector_profile_credentials__custom_connector__api_key

val connector_profile_config__connector_profile_credentials__custom_connector__api_key :
  ?api_secret_key:string prop ->
  api_key:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__custom_connector__api_key

type connector_profile_config__connector_profile_credentials__custom_connector__basic

val connector_profile_config__connector_profile_credentials__custom_connector__basic :
  password:string prop ->
  username:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__custom_connector__basic

type connector_profile_config__connector_profile_credentials__custom_connector__custom

val connector_profile_config__connector_profile_credentials__custom_connector__custom :
  ?credentials_map:(string * string prop) list ->
  custom_authentication_type:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__custom_connector__custom

type connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request

val connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request

type connector_profile_config__connector_profile_credentials__custom_connector__oauth2

val connector_profile_config__connector_profile_credentials__custom_connector__oauth2 :
  ?access_token:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?refresh_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    list ->
  unit ->
  connector_profile_config__connector_profile_credentials__custom_connector__oauth2

type connector_profile_config__connector_profile_credentials__custom_connector

val connector_profile_config__connector_profile_credentials__custom_connector :
  ?api_key:
    connector_profile_config__connector_profile_credentials__custom_connector__api_key
    list ->
  ?basic:
    connector_profile_config__connector_profile_credentials__custom_connector__basic
    list ->
  ?custom:
    connector_profile_config__connector_profile_credentials__custom_connector__custom
    list ->
  ?oauth2:
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    list ->
  authentication_type:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__custom_connector

type connector_profile_config__connector_profile_credentials__datadog

val connector_profile_config__connector_profile_credentials__datadog :
  api_key:string prop ->
  application_key:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__datadog

type connector_profile_config__connector_profile_credentials__dynatrace

val connector_profile_config__connector_profile_credentials__dynatrace :
  api_token:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__dynatrace

type connector_profile_config__connector_profile_credentials__google_analytics__oauth_request

val connector_profile_config__connector_profile_credentials__google_analytics__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__google_analytics__oauth_request

type connector_profile_config__connector_profile_credentials__google_analytics

val connector_profile_config__connector_profile_credentials__google_analytics :
  ?access_token:string prop ->
  ?refresh_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__google_analytics

type connector_profile_config__connector_profile_credentials__honeycode__oauth_request

val connector_profile_config__connector_profile_credentials__honeycode__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__honeycode__oauth_request

type connector_profile_config__connector_profile_credentials__honeycode

val connector_profile_config__connector_profile_credentials__honeycode :
  ?access_token:string prop ->
  ?refresh_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    list ->
  unit ->
  connector_profile_config__connector_profile_credentials__honeycode

type connector_profile_config__connector_profile_credentials__infor_nexus

val connector_profile_config__connector_profile_credentials__infor_nexus :
  access_key_id:string prop ->
  datakey:string prop ->
  secret_access_key:string prop ->
  user_id:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__infor_nexus

type connector_profile_config__connector_profile_credentials__marketo__oauth_request

val connector_profile_config__connector_profile_credentials__marketo__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__marketo__oauth_request

type connector_profile_config__connector_profile_credentials__marketo

val connector_profile_config__connector_profile_credentials__marketo :
  ?access_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__marketo__oauth_request
    list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__marketo

type connector_profile_config__connector_profile_credentials__redshift

val connector_profile_config__connector_profile_credentials__redshift :
  password:string prop ->
  username:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__redshift

type connector_profile_config__connector_profile_credentials__salesforce__oauth_request

val connector_profile_config__connector_profile_credentials__salesforce__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__salesforce__oauth_request

type connector_profile_config__connector_profile_credentials__salesforce

val connector_profile_config__connector_profile_credentials__salesforce :
  ?access_token:string prop ->
  ?client_credentials_arn:string prop ->
  ?jwt_token:string prop ->
  ?oauth2_grant_type:string prop ->
  ?refresh_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    list ->
  unit ->
  connector_profile_config__connector_profile_credentials__salesforce

type connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials

val connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials :
  password:string prop ->
  username:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials

type connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request

val connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request

type connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials

val connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials :
  ?access_token:string prop ->
  ?refresh_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials

type connector_profile_config__connector_profile_credentials__sapo_data

val connector_profile_config__connector_profile_credentials__sapo_data :
  ?basic_auth_credentials:
    connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    list ->
  ?oauth_credentials:
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    list ->
  unit ->
  connector_profile_config__connector_profile_credentials__sapo_data

type connector_profile_config__connector_profile_credentials__service_now

val connector_profile_config__connector_profile_credentials__service_now :
  password:string prop ->
  username:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__service_now

type connector_profile_config__connector_profile_credentials__singular

val connector_profile_config__connector_profile_credentials__singular :
  api_key:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__singular

type connector_profile_config__connector_profile_credentials__slack__oauth_request

val connector_profile_config__connector_profile_credentials__slack__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__slack__oauth_request

type connector_profile_config__connector_profile_credentials__slack

val connector_profile_config__connector_profile_credentials__slack :
  ?access_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__slack__oauth_request
    list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__slack

type connector_profile_config__connector_profile_credentials__snowflake

val connector_profile_config__connector_profile_credentials__snowflake :
  password:string prop ->
  username:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__snowflake

type connector_profile_config__connector_profile_credentials__trendmicro

val connector_profile_config__connector_profile_credentials__trendmicro :
  api_secret_key:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__trendmicro

type connector_profile_config__connector_profile_credentials__veeva

val connector_profile_config__connector_profile_credentials__veeva :
  password:string prop ->
  username:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__veeva

type connector_profile_config__connector_profile_credentials__zendesk__oauth_request

val connector_profile_config__connector_profile_credentials__zendesk__oauth_request :
  ?auth_code:string prop ->
  ?redirect_uri:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__zendesk__oauth_request

type connector_profile_config__connector_profile_credentials__zendesk

val connector_profile_config__connector_profile_credentials__zendesk :
  ?access_token:string prop ->
  ?oauth_request:
    connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  connector_profile_config__connector_profile_credentials__zendesk

type connector_profile_config__connector_profile_credentials

val connector_profile_config__connector_profile_credentials :
  ?amplitude:
    connector_profile_config__connector_profile_credentials__amplitude
    list ->
  ?custom_connector:
    connector_profile_config__connector_profile_credentials__custom_connector
    list ->
  ?datadog:
    connector_profile_config__connector_profile_credentials__datadog
    list ->
  ?dynatrace:
    connector_profile_config__connector_profile_credentials__dynatrace
    list ->
  ?google_analytics:
    connector_profile_config__connector_profile_credentials__google_analytics
    list ->
  ?honeycode:
    connector_profile_config__connector_profile_credentials__honeycode
    list ->
  ?infor_nexus:
    connector_profile_config__connector_profile_credentials__infor_nexus
    list ->
  ?marketo:
    connector_profile_config__connector_profile_credentials__marketo
    list ->
  ?redshift:
    connector_profile_config__connector_profile_credentials__redshift
    list ->
  ?salesforce:
    connector_profile_config__connector_profile_credentials__salesforce
    list ->
  ?sapo_data:
    connector_profile_config__connector_profile_credentials__sapo_data
    list ->
  ?service_now:
    connector_profile_config__connector_profile_credentials__service_now
    list ->
  ?singular:
    connector_profile_config__connector_profile_credentials__singular
    list ->
  ?slack:
    connector_profile_config__connector_profile_credentials__slack
    list ->
  ?snowflake:
    connector_profile_config__connector_profile_credentials__snowflake
    list ->
  ?trendmicro:
    connector_profile_config__connector_profile_credentials__trendmicro
    list ->
  ?veeva:
    connector_profile_config__connector_profile_credentials__veeva
    list ->
  ?zendesk:
    connector_profile_config__connector_profile_credentials__zendesk
    list ->
  unit ->
  connector_profile_config__connector_profile_credentials

type connector_profile_config__connector_profile_properties__amplitude

val connector_profile_config__connector_profile_properties__amplitude :
  unit ->
  connector_profile_config__connector_profile_properties__amplitude

type connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties

val connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties :
  ?token_url_custom_properties:(string * string prop) list ->
  oauth2_grant_type:string prop ->
  token_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties

type connector_profile_config__connector_profile_properties__custom_connector

val connector_profile_config__connector_profile_properties__custom_connector :
  ?profile_properties:(string * string prop) list ->
  ?oauth2_properties:
    connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    list ->
  unit ->
  connector_profile_config__connector_profile_properties__custom_connector

type connector_profile_config__connector_profile_properties__datadog

val connector_profile_config__connector_profile_properties__datadog :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__datadog

type connector_profile_config__connector_profile_properties__dynatrace

val connector_profile_config__connector_profile_properties__dynatrace :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__dynatrace

type connector_profile_config__connector_profile_properties__google_analytics

val connector_profile_config__connector_profile_properties__google_analytics :
  unit ->
  connector_profile_config__connector_profile_properties__google_analytics

type connector_profile_config__connector_profile_properties__honeycode

val connector_profile_config__connector_profile_properties__honeycode :
  unit ->
  connector_profile_config__connector_profile_properties__honeycode

type connector_profile_config__connector_profile_properties__infor_nexus

val connector_profile_config__connector_profile_properties__infor_nexus :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__infor_nexus

type connector_profile_config__connector_profile_properties__marketo

val connector_profile_config__connector_profile_properties__marketo :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__marketo

type connector_profile_config__connector_profile_properties__redshift

val connector_profile_config__connector_profile_properties__redshift :
  ?bucket_prefix:string prop ->
  ?cluster_identifier:string prop ->
  ?data_api_role_arn:string prop ->
  ?database_name:string prop ->
  ?database_url:string prop ->
  bucket_name:string prop ->
  role_arn:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__redshift

type connector_profile_config__connector_profile_properties__salesforce

val connector_profile_config__connector_profile_properties__salesforce :
  ?instance_url:string prop ->
  ?is_sandbox_environment:bool prop ->
  unit ->
  connector_profile_config__connector_profile_properties__salesforce

type connector_profile_config__connector_profile_properties__sapo_data__oauth_properties

val connector_profile_config__connector_profile_properties__sapo_data__oauth_properties :
  auth_code_url:string prop ->
  oauth_scopes:string prop list ->
  token_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__sapo_data__oauth_properties

type connector_profile_config__connector_profile_properties__sapo_data

val connector_profile_config__connector_profile_properties__sapo_data :
  ?logon_language:string prop ->
  ?private_link_service_name:string prop ->
  ?oauth_properties:
    connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    list ->
  application_host_url:string prop ->
  application_service_path:string prop ->
  client_number:string prop ->
  port_number:float prop ->
  unit ->
  connector_profile_config__connector_profile_properties__sapo_data

type connector_profile_config__connector_profile_properties__service_now

val connector_profile_config__connector_profile_properties__service_now :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__service_now

type connector_profile_config__connector_profile_properties__singular

val connector_profile_config__connector_profile_properties__singular :
  unit ->
  connector_profile_config__connector_profile_properties__singular

type connector_profile_config__connector_profile_properties__slack

val connector_profile_config__connector_profile_properties__slack :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__slack

type connector_profile_config__connector_profile_properties__snowflake

val connector_profile_config__connector_profile_properties__snowflake :
  ?account_name:string prop ->
  ?bucket_prefix:string prop ->
  ?private_link_service_name:string prop ->
  ?region:string prop ->
  bucket_name:string prop ->
  stage:string prop ->
  warehouse:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__snowflake

type connector_profile_config__connector_profile_properties__trendmicro

val connector_profile_config__connector_profile_properties__trendmicro :
  unit ->
  connector_profile_config__connector_profile_properties__trendmicro

type connector_profile_config__connector_profile_properties__veeva

val connector_profile_config__connector_profile_properties__veeva :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__veeva

type connector_profile_config__connector_profile_properties__zendesk

val connector_profile_config__connector_profile_properties__zendesk :
  instance_url:string prop ->
  unit ->
  connector_profile_config__connector_profile_properties__zendesk

type connector_profile_config__connector_profile_properties

val connector_profile_config__connector_profile_properties :
  ?amplitude:
    connector_profile_config__connector_profile_properties__amplitude
    list ->
  ?custom_connector:
    connector_profile_config__connector_profile_properties__custom_connector
    list ->
  ?datadog:
    connector_profile_config__connector_profile_properties__datadog
    list ->
  ?dynatrace:
    connector_profile_config__connector_profile_properties__dynatrace
    list ->
  ?google_analytics:
    connector_profile_config__connector_profile_properties__google_analytics
    list ->
  ?honeycode:
    connector_profile_config__connector_profile_properties__honeycode
    list ->
  ?infor_nexus:
    connector_profile_config__connector_profile_properties__infor_nexus
    list ->
  ?marketo:
    connector_profile_config__connector_profile_properties__marketo
    list ->
  ?redshift:
    connector_profile_config__connector_profile_properties__redshift
    list ->
  ?salesforce:
    connector_profile_config__connector_profile_properties__salesforce
    list ->
  ?sapo_data:
    connector_profile_config__connector_profile_properties__sapo_data
    list ->
  ?service_now:
    connector_profile_config__connector_profile_properties__service_now
    list ->
  ?singular:
    connector_profile_config__connector_profile_properties__singular
    list ->
  ?slack:
    connector_profile_config__connector_profile_properties__slack
    list ->
  ?snowflake:
    connector_profile_config__connector_profile_properties__snowflake
    list ->
  ?trendmicro:
    connector_profile_config__connector_profile_properties__trendmicro
    list ->
  ?veeva:
    connector_profile_config__connector_profile_properties__veeva
    list ->
  ?zendesk:
    connector_profile_config__connector_profile_properties__zendesk
    list ->
  unit ->
  connector_profile_config__connector_profile_properties

type connector_profile_config

val connector_profile_config :
  connector_profile_credentials:
    connector_profile_config__connector_profile_credentials list ->
  connector_profile_properties:
    connector_profile_config__connector_profile_properties list ->
  unit ->
  connector_profile_config

type aws_appflow_connector_profile

val aws_appflow_connector_profile :
  ?connector_label:string prop ->
  ?id:string prop ->
  ?kms_arn:string prop ->
  connection_mode:string prop ->
  connector_type:string prop ->
  name:string prop ->
  connector_profile_config:connector_profile_config list ->
  unit ->
  aws_appflow_connector_profile

val yojson_of_aws_appflow_connector_profile :
  aws_appflow_connector_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  connection_mode : string prop;
  connector_label : string prop;
  connector_type : string prop;
  credentials_arn : string prop;
  id : string prop;
  kms_arn : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?connector_label:string prop ->
  ?id:string prop ->
  ?kms_arn:string prop ->
  connection_mode:string prop ->
  connector_type:string prop ->
  name:string prop ->
  connector_profile_config:connector_profile_config list ->
  string ->
  t

val make :
  ?connector_label:string prop ->
  ?id:string prop ->
  ?kms_arn:string prop ->
  connection_mode:string prop ->
  connector_type:string prop ->
  name:string prop ->
  connector_profile_config:connector_profile_config list ->
  string ->
  t Tf_core.resource

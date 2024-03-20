(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type contact

val contact :
  ?email:string prop ->
  ?name:string prop ->
  ?url:string prop ->
  unit ->
  contact

type import__wsdl_selector

val import__wsdl_selector :
  endpoint_name:string prop ->
  service_name:string prop ->
  unit ->
  import__wsdl_selector

type import

val import :
  content_format:string prop ->
  content_value:string prop ->
  wsdl_selector:import__wsdl_selector list ->
  unit ->
  import

type license

val license :
  ?name:string prop -> ?url:string prop -> unit -> license

type oauth2_authorization

val oauth2_authorization :
  ?scope:string prop ->
  authorization_server_name:string prop ->
  unit ->
  oauth2_authorization

type openid_authentication

val openid_authentication :
  ?bearer_token_sending_methods:string prop list ->
  openid_provider_name:string prop ->
  unit ->
  openid_authentication

type subscription_key_parameter_names

val subscription_key_parameter_names :
  header:string prop ->
  query:string prop ->
  unit ->
  subscription_key_parameter_names

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_api

val azurerm_api_management_api :
  ?api_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?protocols:string prop list ->
  ?revision_description:string prop ->
  ?service_url:string prop ->
  ?soap_pass_through:bool prop ->
  ?source_api_id:string prop ->
  ?subscription_required:bool prop ->
  ?terms_of_service_url:string prop ->
  ?version:string prop ->
  ?version_description:string prop ->
  ?version_set_id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
  contact:contact list ->
  import:import list ->
  license:license list ->
  oauth2_authorization:oauth2_authorization list ->
  openid_authentication:openid_authentication list ->
  subscription_key_parameter_names:
    subscription_key_parameter_names list ->
  unit ->
  azurerm_api_management_api

val yojson_of_azurerm_api_management_api :
  azurerm_api_management_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  api_type : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_current : bool prop;
  is_online : bool prop;
  name : string prop;
  path : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  revision : string prop;
  revision_description : string prop;
  service_url : string prop;
  soap_pass_through : bool prop;
  source_api_id : string prop;
  subscription_required : bool prop;
  terms_of_service_url : string prop;
  version : string prop;
  version_description : string prop;
  version_set_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?protocols:string prop list ->
  ?revision_description:string prop ->
  ?service_url:string prop ->
  ?soap_pass_through:bool prop ->
  ?source_api_id:string prop ->
  ?subscription_required:bool prop ->
  ?terms_of_service_url:string prop ->
  ?version:string prop ->
  ?version_description:string prop ->
  ?version_set_id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
  contact:contact list ->
  import:import list ->
  license:license list ->
  oauth2_authorization:oauth2_authorization list ->
  openid_authentication:openid_authentication list ->
  subscription_key_parameter_names:
    subscription_key_parameter_names list ->
  string ->
  t

val make :
  ?api_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?protocols:string prop list ->
  ?revision_description:string prop ->
  ?service_url:string prop ->
  ?soap_pass_through:bool prop ->
  ?source_api_id:string prop ->
  ?subscription_required:bool prop ->
  ?terms_of_service_url:string prop ->
  ?version:string prop ->
  ?version_description:string prop ->
  ?version_set_id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
  contact:contact list ->
  import:import list ->
  license:license list ->
  oauth2_authorization:oauth2_authorization list ->
  openid_authentication:openid_authentication list ->
  subscription_key_parameter_names:
    subscription_key_parameter_names list ->
  string ->
  t Tf_core.resource

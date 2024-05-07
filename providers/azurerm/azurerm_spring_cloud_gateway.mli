(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type api_metadata

val api_metadata :
  ?description:string prop ->
  ?documentation_url:string prop ->
  ?server_url:string prop ->
  ?title:string prop ->
  ?version:string prop ->
  unit ->
  api_metadata

type client_authorization

val client_authorization :
  ?certificate_ids:string prop list ->
  ?verification_enabled:bool prop ->
  unit ->
  client_authorization

type cors

val cors :
  ?allowed_headers:string prop list ->
  ?allowed_methods:string prop list ->
  ?allowed_origin_patterns:string prop list ->
  ?allowed_origins:string prop list ->
  ?credentials_allowed:bool prop ->
  ?exposed_headers:string prop list ->
  ?max_age_seconds:float prop ->
  unit ->
  cors

type local_response_cache_per_instance

val local_response_cache_per_instance :
  ?size:string prop ->
  ?time_to_live:string prop ->
  unit ->
  local_response_cache_per_instance

type local_response_cache_per_route

val local_response_cache_per_route :
  ?size:string prop ->
  ?time_to_live:string prop ->
  unit ->
  local_response_cache_per_route

type quota

val quota : ?cpu:string prop -> ?memory:string prop -> unit -> quota

type sso

val sso :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?issuer_uri:string prop ->
  ?scope:string prop list ->
  unit ->
  sso

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_gateway

val azurerm_spring_cloud_gateway :
  ?application_performance_monitoring_ids:string prop list ->
  ?application_performance_monitoring_types:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?sensitive_environment_variables:(string * string prop) list ->
  ?api_metadata:api_metadata list ->
  ?client_authorization:client_authorization list ->
  ?cors:cors list ->
  ?local_response_cache_per_instance:
    local_response_cache_per_instance list ->
  ?local_response_cache_per_route:local_response_cache_per_route list ->
  ?quota:quota list ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_gateway

val yojson_of_azurerm_spring_cloud_gateway :
  azurerm_spring_cloud_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_performance_monitoring_ids : string list prop;
  application_performance_monitoring_types : string list prop;
  environment_variables : (string * string) list prop;
  https_only : bool prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  sensitive_environment_variables : (string * string) list prop;
  spring_cloud_service_id : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_performance_monitoring_ids:string prop list ->
  ?application_performance_monitoring_types:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?sensitive_environment_variables:(string * string prop) list ->
  ?api_metadata:api_metadata list ->
  ?client_authorization:client_authorization list ->
  ?cors:cors list ->
  ?local_response_cache_per_instance:
    local_response_cache_per_instance list ->
  ?local_response_cache_per_route:local_response_cache_per_route list ->
  ?quota:quota list ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t

val make :
  ?application_performance_monitoring_ids:string prop list ->
  ?application_performance_monitoring_types:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?sensitive_environment_variables:(string * string prop) list ->
  ?api_metadata:api_metadata list ->
  ?client_authorization:client_authorization list ->
  ?cors:cors list ->
  ?local_response_cache_per_instance:
    local_response_cache_per_instance list ->
  ?local_response_cache_per_route:local_response_cache_per_route list ->
  ?quota:quota list ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t Tf_core.resource

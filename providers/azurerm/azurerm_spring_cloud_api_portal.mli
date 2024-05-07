(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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

type azurerm_spring_cloud_api_portal

val azurerm_spring_cloud_api_portal :
  ?api_try_out_enabled:bool prop ->
  ?gateway_ids:string prop list ->
  ?https_only_enabled:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_api_portal

val yojson_of_azurerm_spring_cloud_api_portal :
  azurerm_spring_cloud_api_portal -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_try_out_enabled : bool prop;
  gateway_ids : string list prop;
  https_only_enabled : bool prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  spring_cloud_service_id : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_try_out_enabled:bool prop ->
  ?gateway_ids:string prop list ->
  ?https_only_enabled:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t

val make :
  ?api_try_out_enabled:bool prop ->
  ?gateway_ids:string prop list ->
  ?https_only_enabled:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sso

val sso :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?metadata_url:string prop ->
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

type azurerm_spring_cloud_dev_tool_portal

val azurerm_spring_cloud_dev_tool_portal :
  ?application_accelerator_enabled:bool prop ->
  ?application_live_view_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_dev_tool_portal

val yojson_of_azurerm_spring_cloud_dev_tool_portal :
  azurerm_spring_cloud_dev_tool_portal -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_accelerator_enabled : bool prop;
  application_live_view_enabled : bool prop;
  id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_accelerator_enabled:bool prop ->
  ?application_live_view_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t

val make :
  ?application_accelerator_enabled:bool prop ->
  ?application_live_view_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sso:sso list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t Tf_core.resource

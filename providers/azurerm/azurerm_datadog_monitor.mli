(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type datadog_organization

val datadog_organization :
  ?enterprise_app_id:string prop ->
  ?linking_auth_code:string prop ->
  ?linking_client_id:string prop ->
  ?redirect_uri:string prop ->
  api_key:string prop ->
  application_key:string prop ->
  unit ->
  datadog_organization

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user

val user :
  ?phone_number:string prop ->
  email:string prop ->
  name:string prop ->
  unit ->
  user

type azurerm_datadog_monitor

val azurerm_datadog_monitor :
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  datadog_organization:datadog_organization list ->
  user:user list ->
  unit ->
  azurerm_datadog_monitor

val yojson_of_azurerm_datadog_monitor :
  azurerm_datadog_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  marketplace_subscription_status : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  datadog_organization:datadog_organization list ->
  user:user list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  datadog_organization:datadog_organization list ->
  user:user list ->
  string ->
  t Tf_core.resource

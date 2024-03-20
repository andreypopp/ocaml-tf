(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subscription_key_parameter_names = {
  header : string prop;  (** header *)
  query : string prop;  (** query *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_api_management_api

val azurerm_api_management_api :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
  unit ->
  azurerm_api_management_api

val yojson_of_azurerm_api_management_api :
  azurerm_api_management_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
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
  service_url : string prop;
  soap_pass_through : bool prop;
  subscription_key_parameter_names :
    subscription_key_parameter_names list prop;
  subscription_required : bool prop;
  version : string prop;
  version_set_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
  string ->
  t Tf_core.resource

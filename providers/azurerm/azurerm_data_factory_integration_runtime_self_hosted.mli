(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rbac_authorization

val rbac_authorization :
  resource_id:string prop -> unit -> rbac_authorization

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_integration_runtime_self_hosted

val azurerm_data_factory_integration_runtime_self_hosted :
  ?description:string prop ->
  ?id:string prop ->
  ?self_contained_interactive_authoring_enabled:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  rbac_authorization:rbac_authorization list ->
  unit ->
  azurerm_data_factory_integration_runtime_self_hosted

val yojson_of_azurerm_data_factory_integration_runtime_self_hosted :
  azurerm_data_factory_integration_runtime_self_hosted -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  primary_authorization_key : string prop;
  secondary_authorization_key : string prop;
  self_contained_interactive_authoring_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?self_contained_interactive_authoring_enabled:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  rbac_authorization:rbac_authorization list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?self_contained_interactive_authoring_enabled:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  rbac_authorization:rbac_authorization list ->
  string ->
  t Tf_core.resource

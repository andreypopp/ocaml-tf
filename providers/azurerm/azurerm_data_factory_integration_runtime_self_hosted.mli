(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  primary_authorization_key : string prop;
  secondary_authorization_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  rbac_authorization:rbac_authorization list ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_manager_security_admin_configuration

val azurerm_network_manager_security_admin_configuration :
  ?apply_on_network_intent_policy_based_services:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  unit ->
  azurerm_network_manager_security_admin_configuration

val yojson_of_azurerm_network_manager_security_admin_configuration :
  azurerm_network_manager_security_admin_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  apply_on_network_intent_policy_based_services : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?apply_on_network_intent_policy_based_services:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t

val make :
  ?apply_on_network_intent_policy_based_services:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t Tf_core.resource

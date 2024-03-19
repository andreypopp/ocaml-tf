(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_dsc_nodeconfiguration

val azurerm_automation_dsc_nodeconfiguration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_dsc_nodeconfiguration

val yojson_of_azurerm_automation_dsc_nodeconfiguration :
  azurerm_automation_dsc_nodeconfiguration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  configuration_name : string prop;
  content_embedded : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

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

type azurerm_iotcentral_organization

val azurerm_iotcentral_organization :
  ?id:string prop ->
  ?parent_organization_id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  iotcentral_application_id:string prop ->
  organization_id:string prop ->
  unit ->
  azurerm_iotcentral_organization

val yojson_of_azurerm_iotcentral_organization :
  azurerm_iotcentral_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
  organization_id : string prop;
  parent_organization_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parent_organization_id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  iotcentral_application_id:string prop ->
  organization_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parent_organization_id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  iotcentral_application_id:string prop ->
  organization_id:string prop ->
  string ->
  t Tf_core.resource

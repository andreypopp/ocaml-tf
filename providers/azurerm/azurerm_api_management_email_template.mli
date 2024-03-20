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

type azurerm_api_management_email_template

val azurerm_api_management_email_template :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  body:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  template_name:string prop ->
  unit ->
  azurerm_api_management_email_template

val yojson_of_azurerm_api_management_email_template :
  azurerm_api_management_email_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  body : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  subject : string prop;
  template_name : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  body:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  template_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  body:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  template_name:string prop ->
  string ->
  t Tf_core.resource

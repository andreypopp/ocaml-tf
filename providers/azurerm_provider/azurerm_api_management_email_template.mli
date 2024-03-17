(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_email_template__timeouts
type azurerm_api_management_email_template

val azurerm_api_management_email_template :
  ?id:string ->
  ?timeouts:azurerm_api_management_email_template__timeouts ->
  api_management_name:string ->
  body:string ->
  resource_group_name:string ->
  subject:string ->
  template_name:string ->
  string ->
  unit

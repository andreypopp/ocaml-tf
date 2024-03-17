(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_email_template__timeouts
type azurerm_api_management_email_template

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

val azurerm_api_management_email_template :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_email_template__timeouts ->
  api_management_name:string prop ->
  body:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  template_name:string prop ->
  string ->
  t

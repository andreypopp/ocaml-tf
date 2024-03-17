(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_web_app_custom_domain__timeouts
type azurerm_static_web_app_custom_domain

val azurerm_static_web_app_custom_domain :
  ?id:string prop ->
  ?timeouts:azurerm_static_web_app_custom_domain__timeouts ->
  domain_name:string prop ->
  static_web_app_id:string prop ->
  validation_type:string prop ->
  string ->
  unit

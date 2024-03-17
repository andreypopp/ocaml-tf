(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_site_custom_domain__timeouts
type azurerm_static_site_custom_domain

val azurerm_static_site_custom_domain :
  ?validation_type:string ->
  ?timeouts:azurerm_static_site_custom_domain__timeouts ->
  domain_name:string ->
  static_site_id:string ->
  string ->
  unit

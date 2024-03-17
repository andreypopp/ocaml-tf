(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_site_custom_domain__timeouts
type azurerm_static_site_custom_domain

type t = private {
  domain_name : string prop;
  id : string prop;
  static_site_id : string prop;
  validation_token : string prop;
  validation_type : string prop;
}

val azurerm_static_site_custom_domain :
  ?id:string prop ->
  ?validation_type:string prop ->
  ?timeouts:azurerm_static_site_custom_domain__timeouts ->
  domain_name:string prop ->
  static_site_id:string prop ->
  string ->
  t

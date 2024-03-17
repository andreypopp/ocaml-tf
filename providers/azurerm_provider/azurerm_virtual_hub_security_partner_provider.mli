(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_security_partner_provider__timeouts
type azurerm_virtual_hub_security_partner_provider

val azurerm_virtual_hub_security_partner_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_hub_id:string prop ->
  ?timeouts:azurerm_virtual_hub_security_partner_provider__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  security_provider_name:string prop ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_security_partner_provider__timeouts
type azurerm_virtual_hub_security_partner_provider

val azurerm_virtual_hub_security_partner_provider :
  ?tags:(string * string) list ->
  ?virtual_hub_id:string ->
  ?timeouts:azurerm_virtual_hub_security_partner_provider__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  security_provider_name:string ->
  string ->
  unit

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

type azurerm_virtual_hub_security_partner_provider

val azurerm_virtual_hub_security_partner_provider :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?virtual_hub_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  security_provider_name:string prop ->
  unit ->
  azurerm_virtual_hub_security_partner_provider

val yojson_of_azurerm_virtual_hub_security_partner_provider :
  azurerm_virtual_hub_security_partner_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  security_provider_name : string prop;
  tags : string Tf_core.assoc prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?virtual_hub_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  security_provider_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?virtual_hub_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  security_provider_name:string prop ->
  string ->
  t Tf_core.resource

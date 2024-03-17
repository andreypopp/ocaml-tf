(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_account__encryption
type azurerm_automation_account__identity
type azurerm_automation_account__timeouts

type azurerm_automation_account__private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type azurerm_automation_account

val azurerm_automation_account :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_automation_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  encryption:azurerm_automation_account__encryption list ->
  identity:azurerm_automation_account__identity list ->
  string ->
  unit

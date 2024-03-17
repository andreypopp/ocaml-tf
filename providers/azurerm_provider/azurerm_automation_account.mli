(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_account__encryption
type azurerm_automation_account__identity
type azurerm_automation_account__timeouts

type azurerm_automation_account__private_endpoint_connection = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_automation_account

val azurerm_automation_account :
  ?local_authentication_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_automation_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  encryption:azurerm_automation_account__encryption list ->
  identity:azurerm_automation_account__identity list ->
  string ->
  unit

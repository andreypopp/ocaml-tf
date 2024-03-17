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

type t = private {
  dsc_primary_access_key : string prop;
  dsc_secondary_access_key : string prop;
  dsc_server_endpoint : string prop;
  hybrid_service_url : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_endpoint_connection :
    azurerm_automation_account__private_endpoint_connection list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

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
  t

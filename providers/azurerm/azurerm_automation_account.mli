(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type encryption

val encryption :
  ?key_source:string prop ->
  ?user_assigned_identity_id:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  encryption

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_account

val azurerm_automation_account :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  unit ->
  azurerm_automation_account

val yojson_of_azurerm_automation_account :
  azurerm_automation_account -> json

(** RESOURCE REGISTRATION *)

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
    private_endpoint_connection list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  string ->
  t Tf_core.resource

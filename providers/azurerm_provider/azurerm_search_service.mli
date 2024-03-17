(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_search_service__identity
type azurerm_search_service__timeouts

type azurerm_search_service__query_keys = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}

type azurerm_search_service

type t = private {
  allowed_ips : string list prop;
  authentication_failure_mode : string prop;
  customer_managed_key_enforcement_enabled : bool prop;
  hosting_mode : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  partition_count : float prop;
  primary_key : string prop;
  public_network_access_enabled : bool prop;
  query_keys : azurerm_search_service__query_keys list prop;
  replica_count : float prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  semantic_search_sku : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

val azurerm_search_service :
  ?allowed_ips:string prop list ->
  ?authentication_failure_mode:string prop ->
  ?customer_managed_key_enforcement_enabled:bool prop ->
  ?hosting_mode:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?partition_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?replica_count:float prop ->
  ?semantic_search_sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_search_service__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  identity:azurerm_search_service__identity list ->
  string ->
  t

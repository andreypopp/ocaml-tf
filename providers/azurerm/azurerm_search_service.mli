(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type query_keys = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_search_service

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
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_search_service

val yojson_of_azurerm_search_service : azurerm_search_service -> json

(** RESOURCE REGISTRATION *)

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
  query_keys : query_keys list prop;
  replica_count : float prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  semantic_search_sku : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
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
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource

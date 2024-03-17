(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_search_service__identity
type azurerm_search_service__timeouts

type azurerm_search_service__query_keys = {
  key : string;  (** key *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_search_service

val azurerm_search_service :
  ?allowed_ips:string list ->
  ?authentication_failure_mode:string ->
  ?customer_managed_key_enforcement_enabled:bool ->
  ?hosting_mode:string ->
  ?local_authentication_enabled:bool ->
  ?partition_count:float ->
  ?public_network_access_enabled:bool ->
  ?replica_count:float ->
  ?semantic_search_sku:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_search_service__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  identity:azurerm_search_service__identity list ->
  string ->
  unit

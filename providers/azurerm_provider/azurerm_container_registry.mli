(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry__georeplications
type azurerm_container_registry__identity
type azurerm_container_registry__timeouts

type azurerm_container_registry__encryption = {
  enabled : bool;  (** enabled *)
  identity_client_id : string;  (** identity_client_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set__virtual_network = {
  action : string;  (** action *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set__ip_rule = {
  action : string;  (** action *)
  ip_range : string;  (** ip_range *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set = {
  default_action : string;  (** default_action *)
  ip_rule :
    azurerm_container_registry__network_rule_set__ip_rule list;
      (** ip_rule *)
  virtual_network :
    azurerm_container_registry__network_rule_set__virtual_network
    list;
      (** virtual_network *)
}
[@@deriving yojson_of]

type azurerm_container_registry__retention_policy = {
  days : float;  (** days *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]

type azurerm_container_registry__trust_policy = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]

type azurerm_container_registry

val azurerm_container_registry :
  ?admin_enabled:bool ->
  ?anonymous_pull_enabled:bool ->
  ?data_endpoint_enabled:bool ->
  ?export_policy_enabled:bool ->
  ?network_rule_bypass_option:string ->
  ?public_network_access_enabled:bool ->
  ?quarantine_policy_enabled:bool ->
  ?tags:(string * string) list ->
  ?zone_redundancy_enabled:bool ->
  ?timeouts:azurerm_container_registry__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  georeplications:azurerm_container_registry__georeplications list ->
  identity:azurerm_container_registry__identity list ->
  string ->
  unit

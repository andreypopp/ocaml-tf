(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry__georeplications
type azurerm_container_registry__identity
type azurerm_container_registry__timeouts

type azurerm_container_registry__encryption = {
  enabled : bool prop;  (** enabled *)
  identity_client_id : string prop;  (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}

type azurerm_container_registry__network_rule_set__virtual_network = {
  action : string prop;  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}

type azurerm_container_registry__network_rule_set__ip_rule = {
  action : string prop;  (** action *)
  ip_range : string prop;  (** ip_range *)
}

type azurerm_container_registry__network_rule_set = {
  default_action : string prop;  (** default_action *)
  ip_rule :
    azurerm_container_registry__network_rule_set__ip_rule list;
      (** ip_rule *)
  virtual_network :
    azurerm_container_registry__network_rule_set__virtual_network
    list;
      (** virtual_network *)
}

type azurerm_container_registry__retention_policy = {
  days : float prop;  (** days *)
  enabled : bool prop;  (** enabled *)
}

type azurerm_container_registry__trust_policy = {
  enabled : bool prop;  (** enabled *)
}

type azurerm_container_registry

val azurerm_container_registry :
  ?admin_enabled:bool prop ->
  ?anonymous_pull_enabled:bool prop ->
  ?data_endpoint_enabled:bool prop ->
  ?encryption:azurerm_container_registry__encryption list ->
  ?export_policy_enabled:bool prop ->
  ?id:string prop ->
  ?network_rule_bypass_option:string prop ->
  ?network_rule_set:azurerm_container_registry__network_rule_set list ->
  ?public_network_access_enabled:bool prop ->
  ?quarantine_policy_enabled:bool prop ->
  ?retention_policy:azurerm_container_registry__retention_policy list ->
  ?tags:(string * string prop) list ->
  ?trust_policy:azurerm_container_registry__trust_policy list ->
  ?zone_redundancy_enabled:bool prop ->
  ?timeouts:azurerm_container_registry__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  georeplications:azurerm_container_registry__georeplications list ->
  identity:azurerm_container_registry__identity list ->
  string ->
  unit

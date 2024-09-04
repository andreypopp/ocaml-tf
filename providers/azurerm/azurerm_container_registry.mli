(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption = {
  enabled : bool prop;  (** enabled *)
  identity_client_id : string prop;  (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}

type network_rule_set__virtual_network = {
  action : string prop;  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}

type network_rule_set__ip_rule = {
  action : string prop;  (** action *)
  ip_range : string prop;  (** ip_range *)
}

type network_rule_set = {
  default_action : string prop;  (** default_action *)
  ip_rule : network_rule_set__ip_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_rule *)
  virtual_network : network_rule_set__virtual_network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_network *)
}

type retention_policy = {
  days : float prop;  (** days *)
  enabled : bool prop;  (** enabled *)
}

type trust_policy = { enabled : bool prop  (** enabled *) }
type georeplications

val georeplications :
  ?regional_endpoint_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundancy_enabled:bool prop ->
  location:string prop ->
  unit ->
  georeplications

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

type azurerm_container_registry

val azurerm_container_registry :
  ?admin_enabled:bool prop ->
  ?anonymous_pull_enabled:bool prop ->
  ?data_endpoint_enabled:bool prop ->
  ?encryption:encryption list ->
  ?export_policy_enabled:bool prop ->
  ?id:string prop ->
  ?network_rule_bypass_option:string prop ->
  ?network_rule_set:network_rule_set list ->
  ?public_network_access_enabled:bool prop ->
  ?quarantine_policy_enabled:bool prop ->
  ?retention_policy:retention_policy list ->
  ?tags:string prop Tf_core.assoc ->
  ?trust_policy:trust_policy list ->
  ?zone_redundancy_enabled:bool prop ->
  ?georeplications:georeplications list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_container_registry

val yojson_of_azurerm_container_registry :
  azurerm_container_registry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_enabled : bool prop;
  admin_password : string prop;
  admin_username : string prop;
  anonymous_pull_enabled : bool prop;
  data_endpoint_enabled : bool prop;
  encryption : encryption list prop;
  export_policy_enabled : bool prop;
  id : string prop;
  location : string prop;
  login_server : string prop;
  name : string prop;
  network_rule_bypass_option : string prop;
  network_rule_set : network_rule_set list prop;
  public_network_access_enabled : bool prop;
  quarantine_policy_enabled : bool prop;
  resource_group_name : string prop;
  retention_policy : retention_policy list prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  trust_policy : trust_policy list prop;
  zone_redundancy_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_enabled:bool prop ->
  ?anonymous_pull_enabled:bool prop ->
  ?data_endpoint_enabled:bool prop ->
  ?encryption:encryption list ->
  ?export_policy_enabled:bool prop ->
  ?id:string prop ->
  ?network_rule_bypass_option:string prop ->
  ?network_rule_set:network_rule_set list ->
  ?public_network_access_enabled:bool prop ->
  ?quarantine_policy_enabled:bool prop ->
  ?retention_policy:retention_policy list ->
  ?tags:string prop Tf_core.assoc ->
  ?trust_policy:trust_policy list ->
  ?zone_redundancy_enabled:bool prop ->
  ?georeplications:georeplications list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?admin_enabled:bool prop ->
  ?anonymous_pull_enabled:bool prop ->
  ?data_endpoint_enabled:bool prop ->
  ?encryption:encryption list ->
  ?export_policy_enabled:bool prop ->
  ?id:string prop ->
  ?network_rule_bypass_option:string prop ->
  ?network_rule_set:network_rule_set list ->
  ?public_network_access_enabled:bool prop ->
  ?quarantine_policy_enabled:bool prop ->
  ?retention_policy:retention_policy list ->
  ?tags:string prop Tf_core.assoc ->
  ?trust_policy:trust_policy list ->
  ?zone_redundancy_enabled:bool prop ->
  ?georeplications:georeplications list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource

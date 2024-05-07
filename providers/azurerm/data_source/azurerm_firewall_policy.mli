(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns = {
  network_rule_fqdn_enabled : bool prop;
      (** network_rule_fqdn_enabled *)
  proxy_enabled : bool prop;  (** proxy_enabled *)
  servers : string prop list;  (** servers *)
}

type threat_intelligence_allowlist = {
  fqdns : string prop list;  (** fqdns *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_firewall_policy

val azurerm_firewall_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_firewall_policy

val yojson_of_azurerm_firewall_policy :
  azurerm_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_policy_id : string prop;
  child_policies : string list prop;
  dns : dns list prop;
  firewalls : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule_collection_groups : string list prop;
  tags : (string * string) list prop;
  threat_intelligence_allowlist :
    threat_intelligence_allowlist list prop;
  threat_intelligence_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

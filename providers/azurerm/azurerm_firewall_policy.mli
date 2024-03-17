(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall_policy__dns
type azurerm_firewall_policy__explicit_proxy
type azurerm_firewall_policy__identity
type azurerm_firewall_policy__insights__log_analytics_workspace
type azurerm_firewall_policy__insights
type azurerm_firewall_policy__intrusion_detection__signature_overrides
type azurerm_firewall_policy__intrusion_detection__traffic_bypass
type azurerm_firewall_policy__intrusion_detection
type azurerm_firewall_policy__threat_intelligence_allowlist
type azurerm_firewall_policy__timeouts
type azurerm_firewall_policy__tls_certificate
type azurerm_firewall_policy

type t = private {
  auto_learn_private_ranges_enabled : bool prop;
  base_policy_id : string prop;
  child_policies : string list prop;
  firewalls : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_ranges : string list prop;
  resource_group_name : string prop;
  rule_collection_groups : string list prop;
  sku : string prop;
  sql_redirect_allowed : bool prop;
  tags : (string * string) list prop;
  threat_intelligence_mode : string prop;
}

val azurerm_firewall_policy :
  ?auto_learn_private_ranges_enabled:bool prop ->
  ?base_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?sku:string prop ->
  ?sql_redirect_allowed:bool prop ->
  ?tags:(string * string prop) list ->
  ?threat_intelligence_mode:string prop ->
  ?timeouts:azurerm_firewall_policy__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  dns:azurerm_firewall_policy__dns list ->
  explicit_proxy:azurerm_firewall_policy__explicit_proxy list ->
  identity:azurerm_firewall_policy__identity list ->
  insights:azurerm_firewall_policy__insights list ->
  intrusion_detection:
    azurerm_firewall_policy__intrusion_detection list ->
  threat_intelligence_allowlist:
    azurerm_firewall_policy__threat_intelligence_allowlist list ->
  tls_certificate:azurerm_firewall_policy__tls_certificate list ->
  string ->
  t

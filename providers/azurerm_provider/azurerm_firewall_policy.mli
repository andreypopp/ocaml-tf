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

val azurerm_firewall_policy :
  ?auto_learn_private_ranges_enabled:bool ->
  ?base_policy_id:string ->
  ?id:string ->
  ?private_ip_ranges:string list ->
  ?sku:string ->
  ?sql_redirect_allowed:bool ->
  ?tags:(string * string) list ->
  ?threat_intelligence_mode:string ->
  ?timeouts:azurerm_firewall_policy__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
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
  unit

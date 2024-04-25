(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns

val dns :
  ?proxy_enabled:bool prop ->
  ?servers:string prop list ->
  unit ->
  dns

type explicit_proxy

val explicit_proxy :
  ?enable_pac_file:bool prop ->
  ?enabled:bool prop ->
  ?http_port:float prop ->
  ?https_port:float prop ->
  ?pac_file:string prop ->
  ?pac_file_port:float prop ->
  unit ->
  explicit_proxy

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type insights__log_analytics_workspace

val insights__log_analytics_workspace :
  firewall_location:string prop ->
  id:string prop ->
  unit ->
  insights__log_analytics_workspace

type insights

val insights :
  ?retention_in_days:float prop ->
  ?log_analytics_workspace:insights__log_analytics_workspace list ->
  default_log_analytics_workspace_id:string prop ->
  enabled:bool prop ->
  unit ->
  insights

type intrusion_detection__signature_overrides

val intrusion_detection__signature_overrides :
  ?id:string prop ->
  ?state:string prop ->
  unit ->
  intrusion_detection__signature_overrides

type intrusion_detection__traffic_bypass

val intrusion_detection__traffic_bypass :
  ?description:string prop ->
  ?destination_addresses:string prop list ->
  ?destination_ip_groups:string prop list ->
  ?destination_ports:string prop list ->
  ?source_addresses:string prop list ->
  ?source_ip_groups:string prop list ->
  name:string prop ->
  protocol:string prop ->
  unit ->
  intrusion_detection__traffic_bypass

type intrusion_detection

val intrusion_detection :
  ?mode:string prop ->
  ?private_ranges:string prop list ->
  ?signature_overrides:intrusion_detection__signature_overrides list ->
  ?traffic_bypass:intrusion_detection__traffic_bypass list ->
  unit ->
  intrusion_detection

type threat_intelligence_allowlist

val threat_intelligence_allowlist :
  ?fqdns:string prop list ->
  ?ip_addresses:string prop list ->
  unit ->
  threat_intelligence_allowlist

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type tls_certificate

val tls_certificate :
  key_vault_secret_id:string prop ->
  name:string prop ->
  unit ->
  tls_certificate

type azurerm_firewall_policy

val azurerm_firewall_policy :
  ?auto_learn_private_ranges_enabled:bool prop ->
  ?base_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?sku:string prop ->
  ?sql_redirect_allowed:bool prop ->
  ?tags:(string * string prop) list ->
  ?threat_intelligence_mode:string prop ->
  ?dns:dns list ->
  ?explicit_proxy:explicit_proxy list ->
  ?identity:identity list ->
  ?insights:insights list ->
  ?intrusion_detection:intrusion_detection list ->
  ?threat_intelligence_allowlist:threat_intelligence_allowlist list ->
  ?timeouts:timeouts ->
  ?tls_certificate:tls_certificate list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_firewall_policy

val yojson_of_azurerm_firewall_policy :
  azurerm_firewall_policy -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?auto_learn_private_ranges_enabled:bool prop ->
  ?base_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?sku:string prop ->
  ?sql_redirect_allowed:bool prop ->
  ?tags:(string * string prop) list ->
  ?threat_intelligence_mode:string prop ->
  ?dns:dns list ->
  ?explicit_proxy:explicit_proxy list ->
  ?identity:identity list ->
  ?insights:insights list ->
  ?intrusion_detection:intrusion_detection list ->
  ?threat_intelligence_allowlist:threat_intelligence_allowlist list ->
  ?timeouts:timeouts ->
  ?tls_certificate:tls_certificate list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?auto_learn_private_ranges_enabled:bool prop ->
  ?base_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?sku:string prop ->
  ?sql_redirect_allowed:bool prop ->
  ?tags:(string * string prop) list ->
  ?threat_intelligence_mode:string prop ->
  ?dns:dns list ->
  ?explicit_proxy:explicit_proxy list ->
  ?identity:identity list ->
  ?insights:insights list ->
  ?intrusion_detection:intrusion_detection list ->
  ?threat_intelligence_allowlist:threat_intelligence_allowlist list ->
  ?timeouts:timeouts ->
  ?tls_certificate:tls_certificate list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

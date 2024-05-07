(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_workspace

val additional_workspace :
  data_types:string prop list ->
  workspace_id:string prop ->
  unit ->
  additional_workspace

type recommendations_enabled

val recommendations_enabled :
  ?acr_authentication:bool prop ->
  ?agent_send_unutilized_msg:bool prop ->
  ?baseline:bool prop ->
  ?edge_hub_mem_optimize:bool prop ->
  ?edge_logging_option:bool prop ->
  ?inconsistent_module_settings:bool prop ->
  ?install_agent:bool prop ->
  ?ip_filter_deny_all:bool prop ->
  ?ip_filter_permissive_rule:bool prop ->
  ?open_ports:bool prop ->
  ?permissive_firewall_policy:bool prop ->
  ?permissive_input_firewall_rules:bool prop ->
  ?permissive_output_firewall_rules:bool prop ->
  ?privileged_docker_options:bool prop ->
  ?shared_credentials:bool prop ->
  ?vulnerable_tls_cipher_suite:bool prop ->
  unit ->
  recommendations_enabled

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iot_security_solution

val azurerm_iot_security_solution :
  ?disabled_data_sources:string prop list ->
  ?enabled:bool prop ->
  ?events_to_export:string prop list ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?log_unmasked_ips_enabled:bool prop ->
  ?query_for_resources:string prop ->
  ?query_subscription_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?recommendations_enabled:recommendations_enabled list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  iothub_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  additional_workspace:additional_workspace list ->
  unit ->
  azurerm_iot_security_solution

val yojson_of_azurerm_iot_security_solution :
  azurerm_iot_security_solution -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disabled_data_sources : string list prop;
  display_name : string prop;
  enabled : bool prop;
  events_to_export : string list prop;
  id : string prop;
  iothub_ids : string list prop;
  location : string prop;
  log_analytics_workspace_id : string prop;
  log_unmasked_ips_enabled : bool prop;
  name : string prop;
  query_for_resources : string prop;
  query_subscription_ids : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled_data_sources:string prop list ->
  ?enabled:bool prop ->
  ?events_to_export:string prop list ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?log_unmasked_ips_enabled:bool prop ->
  ?query_for_resources:string prop ->
  ?query_subscription_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?recommendations_enabled:recommendations_enabled list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  iothub_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  additional_workspace:additional_workspace list ->
  string ->
  t

val make :
  ?disabled_data_sources:string prop list ->
  ?enabled:bool prop ->
  ?events_to_export:string prop list ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?log_unmasked_ips_enabled:bool prop ->
  ?query_for_resources:string prop ->
  ?query_subscription_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?recommendations_enabled:recommendations_enabled list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  iothub_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  additional_workspace:additional_workspace list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iot_security_solution__additional_workspace = {
  data_types : string list;  (** data_types *)
  workspace_id : string;  (** workspace_id *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution__additional_workspace *)

type azurerm_iot_security_solution__recommendations_enabled = {
  acr_authentication : bool option; [@option]
      (** acr_authentication *)
  agent_send_unutilized_msg : bool option; [@option]
      (** agent_send_unutilized_msg *)
  baseline : bool option; [@option]  (** baseline *)
  edge_hub_mem_optimize : bool option; [@option]
      (** edge_hub_mem_optimize *)
  edge_logging_option : bool option; [@option]
      (** edge_logging_option *)
  inconsistent_module_settings : bool option; [@option]
      (** inconsistent_module_settings *)
  install_agent : bool option; [@option]  (** install_agent *)
  ip_filter_deny_all : bool option; [@option]
      (** ip_filter_deny_all *)
  ip_filter_permissive_rule : bool option; [@option]
      (** ip_filter_permissive_rule *)
  open_ports : bool option; [@option]  (** open_ports *)
  permissive_firewall_policy : bool option; [@option]
      (** permissive_firewall_policy *)
  permissive_input_firewall_rules : bool option; [@option]
      (** permissive_input_firewall_rules *)
  permissive_output_firewall_rules : bool option; [@option]
      (** permissive_output_firewall_rules *)
  privileged_docker_options : bool option; [@option]
      (** privileged_docker_options *)
  shared_credentials : bool option; [@option]
      (** shared_credentials *)
  vulnerable_tls_cipher_suite : bool option; [@option]
      (** vulnerable_tls_cipher_suite *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution__recommendations_enabled *)

type azurerm_iot_security_solution__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution__timeouts *)

type azurerm_iot_security_solution = {
  disabled_data_sources : string list option; [@option]
      (** disabled_data_sources *)
  display_name : string;  (** display_name *)
  enabled : bool option; [@option]  (** enabled *)
  events_to_export : string list option; [@option]
      (** events_to_export *)
  iothub_ids : string list;  (** iothub_ids *)
  location : string;  (** location *)
  log_analytics_workspace_id : string option; [@option]
      (** log_analytics_workspace_id *)
  log_unmasked_ips_enabled : bool option; [@option]
      (** log_unmasked_ips_enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  additional_workspace :
    azurerm_iot_security_solution__additional_workspace list;
  recommendations_enabled :
    azurerm_iot_security_solution__recommendations_enabled list;
  timeouts : azurerm_iot_security_solution__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution *)

let azurerm_iot_security_solution ?disabled_data_sources ?enabled
    ?events_to_export ?log_analytics_workspace_id
    ?log_unmasked_ips_enabled ?tags ?timeouts ~display_name
    ~iothub_ids ~location ~name ~resource_group_name
    ~additional_workspace ~recommendations_enabled __resource_id =
  let __resource_type = "azurerm_iot_security_solution" in
  let __resource =
    {
      disabled_data_sources;
      display_name;
      enabled;
      events_to_export;
      iothub_ids;
      location;
      log_analytics_workspace_id;
      log_unmasked_ips_enabled;
      name;
      resource_group_name;
      tags;
      additional_workspace;
      recommendations_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_security_solution __resource);
  ()

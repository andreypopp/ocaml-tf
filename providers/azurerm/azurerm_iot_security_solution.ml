(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_security_solution__additional_workspace = {
  data_types : string prop list;  (** data_types *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution__additional_workspace *)

type azurerm_iot_security_solution__recommendations_enabled = {
  acr_authentication : bool prop option; [@option]
      (** acr_authentication *)
  agent_send_unutilized_msg : bool prop option; [@option]
      (** agent_send_unutilized_msg *)
  baseline : bool prop option; [@option]  (** baseline *)
  edge_hub_mem_optimize : bool prop option; [@option]
      (** edge_hub_mem_optimize *)
  edge_logging_option : bool prop option; [@option]
      (** edge_logging_option *)
  inconsistent_module_settings : bool prop option; [@option]
      (** inconsistent_module_settings *)
  install_agent : bool prop option; [@option]  (** install_agent *)
  ip_filter_deny_all : bool prop option; [@option]
      (** ip_filter_deny_all *)
  ip_filter_permissive_rule : bool prop option; [@option]
      (** ip_filter_permissive_rule *)
  open_ports : bool prop option; [@option]  (** open_ports *)
  permissive_firewall_policy : bool prop option; [@option]
      (** permissive_firewall_policy *)
  permissive_input_firewall_rules : bool prop option; [@option]
      (** permissive_input_firewall_rules *)
  permissive_output_firewall_rules : bool prop option; [@option]
      (** permissive_output_firewall_rules *)
  privileged_docker_options : bool prop option; [@option]
      (** privileged_docker_options *)
  shared_credentials : bool prop option; [@option]
      (** shared_credentials *)
  vulnerable_tls_cipher_suite : bool prop option; [@option]
      (** vulnerable_tls_cipher_suite *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution__recommendations_enabled *)

type azurerm_iot_security_solution__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution__timeouts *)

type azurerm_iot_security_solution = {
  disabled_data_sources : string prop list option; [@option]
      (** disabled_data_sources *)
  display_name : string prop;  (** display_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  events_to_export : string prop list option; [@option]
      (** events_to_export *)
  id : string prop option; [@option]  (** id *)
  iothub_ids : string prop list;  (** iothub_ids *)
  location : string prop;  (** location *)
  log_analytics_workspace_id : string prop option; [@option]
      (** log_analytics_workspace_id *)
  log_unmasked_ips_enabled : bool prop option; [@option]
      (** log_unmasked_ips_enabled *)
  name : string prop;  (** name *)
  query_for_resources : string prop option; [@option]
      (** query_for_resources *)
  query_subscription_ids : string prop list option; [@option]
      (** query_subscription_ids *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  additional_workspace :
    azurerm_iot_security_solution__additional_workspace list;
  recommendations_enabled :
    azurerm_iot_security_solution__recommendations_enabled list;
  timeouts : azurerm_iot_security_solution__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_security_solution *)

type t = {
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

let azurerm_iot_security_solution ?disabled_data_sources ?enabled
    ?events_to_export ?id ?log_analytics_workspace_id
    ?log_unmasked_ips_enabled ?query_for_resources
    ?query_subscription_ids ?tags ?timeouts ~display_name ~iothub_ids
    ~location ~name ~resource_group_name ~additional_workspace
    ~recommendations_enabled __resource_id =
  let __resource_type = "azurerm_iot_security_solution" in
  let __resource =
    ({
       disabled_data_sources;
       display_name;
       enabled;
       events_to_export;
       id;
       iothub_ids;
       location;
       log_analytics_workspace_id;
       log_unmasked_ips_enabled;
       name;
       query_for_resources;
       query_subscription_ids;
       resource_group_name;
       tags;
       additional_workspace;
       recommendations_enabled;
       timeouts;
     }
      : azurerm_iot_security_solution)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_security_solution __resource);
  let __resource_attributes =
    ({
       disabled_data_sources =
         Prop.computed __resource_type __resource_id
           "disabled_data_sources";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       events_to_export =
         Prop.computed __resource_type __resource_id
           "events_to_export";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_ids =
         Prop.computed __resource_type __resource_id "iothub_ids";
       location =
         Prop.computed __resource_type __resource_id "location";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       log_unmasked_ips_enabled =
         Prop.computed __resource_type __resource_id
           "log_unmasked_ips_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       query_for_resources =
         Prop.computed __resource_type __resource_id
           "query_for_resources";
       query_subscription_ids =
         Prop.computed __resource_type __resource_id
           "query_subscription_ids";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

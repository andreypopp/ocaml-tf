(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_workspace = {
  data_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_workspace) -> ()

let yojson_of_additional_workspace =
  (function
   | { data_types = v_data_types; workspace_id = v_workspace_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_data_types
           in
           let bnd = "data_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : additional_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_workspace

[@@@deriving.end]

type recommendations_enabled = {
  acr_authentication : bool prop option; [@option]
  agent_send_unutilized_msg : bool prop option; [@option]
  baseline : bool prop option; [@option]
  edge_hub_mem_optimize : bool prop option; [@option]
  edge_logging_option : bool prop option; [@option]
  inconsistent_module_settings : bool prop option; [@option]
  install_agent : bool prop option; [@option]
  ip_filter_deny_all : bool prop option; [@option]
  ip_filter_permissive_rule : bool prop option; [@option]
  open_ports : bool prop option; [@option]
  permissive_firewall_policy : bool prop option; [@option]
  permissive_input_firewall_rules : bool prop option; [@option]
  permissive_output_firewall_rules : bool prop option; [@option]
  privileged_docker_options : bool prop option; [@option]
  shared_credentials : bool prop option; [@option]
  vulnerable_tls_cipher_suite : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recommendations_enabled) -> ()

let yojson_of_recommendations_enabled =
  (function
   | {
       acr_authentication = v_acr_authentication;
       agent_send_unutilized_msg = v_agent_send_unutilized_msg;
       baseline = v_baseline;
       edge_hub_mem_optimize = v_edge_hub_mem_optimize;
       edge_logging_option = v_edge_logging_option;
       inconsistent_module_settings = v_inconsistent_module_settings;
       install_agent = v_install_agent;
       ip_filter_deny_all = v_ip_filter_deny_all;
       ip_filter_permissive_rule = v_ip_filter_permissive_rule;
       open_ports = v_open_ports;
       permissive_firewall_policy = v_permissive_firewall_policy;
       permissive_input_firewall_rules =
         v_permissive_input_firewall_rules;
       permissive_output_firewall_rules =
         v_permissive_output_firewall_rules;
       privileged_docker_options = v_privileged_docker_options;
       shared_credentials = v_shared_credentials;
       vulnerable_tls_cipher_suite = v_vulnerable_tls_cipher_suite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vulnerable_tls_cipher_suite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vulnerable_tls_cipher_suite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shared_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privileged_docker_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "privileged_docker_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permissive_output_firewall_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permissive_output_firewall_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permissive_input_firewall_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permissive_input_firewall_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permissive_firewall_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permissive_firewall_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_open_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "open_ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_filter_permissive_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_filter_permissive_rule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_filter_deny_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_filter_deny_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_install_agent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "install_agent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inconsistent_module_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "inconsistent_module_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_logging_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "edge_logging_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_hub_mem_optimize with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "edge_hub_mem_optimize", arg in
             bnd :: bnds
       in
       let bnds =
         match v_baseline with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "baseline", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agent_send_unutilized_msg with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "agent_send_unutilized_msg", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acr_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "acr_authentication", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recommendations_enabled -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recommendations_enabled

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_iot_security_solution = {
  disabled_data_sources : string prop list option; [@option]
  display_name : string prop;
  enabled : bool prop option; [@option]
  events_to_export : string prop list option; [@option]
  id : string prop option; [@option]
  iothub_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  location : string prop;
  log_analytics_workspace_id : string prop option; [@option]
  log_unmasked_ips_enabled : bool prop option; [@option]
  name : string prop;
  query_for_resources : string prop option; [@option]
  query_subscription_ids : string prop list option; [@option]
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  additional_workspace : additional_workspace list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recommendations_enabled : recommendations_enabled list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iot_security_solution) -> ()

let yojson_of_azurerm_iot_security_solution =
  (function
   | {
       disabled_data_sources = v_disabled_data_sources;
       display_name = v_display_name;
       enabled = v_enabled;
       events_to_export = v_events_to_export;
       id = v_id;
       iothub_ids = v_iothub_ids;
       location = v_location;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       log_unmasked_ips_enabled = v_log_unmasked_ips_enabled;
       name = v_name;
       query_for_resources = v_query_for_resources;
       query_subscription_ids = v_query_subscription_ids;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       additional_workspace = v_additional_workspace;
       recommendations_enabled = v_recommendations_enabled;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recommendations_enabled then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recommendations_enabled)
               v_recommendations_enabled
           in
           let bnd = "recommendations_enabled", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_workspace then bnds
         else
           let arg =
             (yojson_of_list yojson_of_additional_workspace)
               v_additional_workspace
           in
           let bnd = "additional_workspace", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_query_subscription_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_subscription_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_for_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_for_resources", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_unmasked_ips_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_unmasked_ips_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_analytics_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_analytics_workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iothub_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_iothub_ids
           in
           let bnd = "iothub_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_events_to_export with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events_to_export", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_disabled_data_sources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_data_sources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iot_security_solution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iot_security_solution

[@@@deriving.end]

let additional_workspace ~data_types ~workspace_id () :
    additional_workspace =
  { data_types; workspace_id }

let recommendations_enabled ?acr_authentication
    ?agent_send_unutilized_msg ?baseline ?edge_hub_mem_optimize
    ?edge_logging_option ?inconsistent_module_settings ?install_agent
    ?ip_filter_deny_all ?ip_filter_permissive_rule ?open_ports
    ?permissive_firewall_policy ?permissive_input_firewall_rules
    ?permissive_output_firewall_rules ?privileged_docker_options
    ?shared_credentials ?vulnerable_tls_cipher_suite () :
    recommendations_enabled =
  {
    acr_authentication;
    agent_send_unutilized_msg;
    baseline;
    edge_hub_mem_optimize;
    edge_logging_option;
    inconsistent_module_settings;
    install_agent;
    ip_filter_deny_all;
    ip_filter_permissive_rule;
    open_ports;
    permissive_firewall_policy;
    permissive_input_firewall_rules;
    permissive_output_firewall_rules;
    privileged_docker_options;
    shared_credentials;
    vulnerable_tls_cipher_suite;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_security_solution ?disabled_data_sources ?enabled
    ?events_to_export ?id ?log_analytics_workspace_id
    ?log_unmasked_ips_enabled ?query_for_resources
    ?query_subscription_ids ?tags ?(recommendations_enabled = [])
    ?timeouts ~display_name ~iothub_ids ~location ~name
    ~resource_group_name ~additional_workspace () :
    azurerm_iot_security_solution =
  {
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

type t = {
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
  tags : string Tf_core.assoc prop;
}

let make ?disabled_data_sources ?enabled ?events_to_export ?id
    ?log_analytics_workspace_id ?log_unmasked_ips_enabled
    ?query_for_resources ?query_subscription_ids ?tags
    ?(recommendations_enabled = []) ?timeouts ~display_name
    ~iothub_ids ~location ~name ~resource_group_name
    ~additional_workspace __id =
  let __type = "azurerm_iot_security_solution" in
  let __attrs =
    ({
       tf_name = __id;
       disabled_data_sources =
         Prop.computed __type __id "disabled_data_sources";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       events_to_export =
         Prop.computed __type __id "events_to_export";
       id = Prop.computed __type __id "id";
       iothub_ids = Prop.computed __type __id "iothub_ids";
       location = Prop.computed __type __id "location";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       log_unmasked_ips_enabled =
         Prop.computed __type __id "log_unmasked_ips_enabled";
       name = Prop.computed __type __id "name";
       query_for_resources =
         Prop.computed __type __id "query_for_resources";
       query_subscription_ids =
         Prop.computed __type __id "query_subscription_ids";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_security_solution
        (azurerm_iot_security_solution ?disabled_data_sources
           ?enabled ?events_to_export ?id ?log_analytics_workspace_id
           ?log_unmasked_ips_enabled ?query_for_resources
           ?query_subscription_ids ?tags ~recommendations_enabled
           ?timeouts ~display_name ~iothub_ids ~location ~name
           ~resource_group_name ~additional_workspace ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled_data_sources ?enabled
    ?events_to_export ?id ?log_analytics_workspace_id
    ?log_unmasked_ips_enabled ?query_for_resources
    ?query_subscription_ids ?tags ?(recommendations_enabled = [])
    ?timeouts ~display_name ~iothub_ids ~location ~name
    ~resource_group_name ~additional_workspace __id =
  let (r : _ Tf_core.resource) =
    make ?disabled_data_sources ?enabled ?events_to_export ?id
      ?log_analytics_workspace_id ?log_unmasked_ips_enabled
      ?query_for_resources ?query_subscription_ids ?tags
      ~recommendations_enabled ?timeouts ~display_name ~iothub_ids
      ~location ~name ~resource_group_name ~additional_workspace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

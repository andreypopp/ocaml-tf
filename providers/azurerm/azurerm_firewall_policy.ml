(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns = {
  proxy_enabled : bool prop option; [@option]
  servers : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns) -> ()

let yojson_of_dns =
  (function
   | { proxy_enabled = v_proxy_enabled; servers = v_servers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "proxy_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns

[@@@deriving.end]

type explicit_proxy = {
  enable_pac_file : bool prop option; [@option]
  enabled : bool prop option; [@option]
  http_port : float prop option; [@option]
  https_port : float prop option; [@option]
  pac_file : string prop option; [@option]
  pac_file_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explicit_proxy) -> ()

let yojson_of_explicit_proxy =
  (function
   | {
       enable_pac_file = v_enable_pac_file;
       enabled = v_enabled;
       http_port = v_http_port;
       https_port = v_https_port;
       pac_file = v_pac_file;
       pac_file_port = v_pac_file_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pac_file_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pac_file_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pac_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pac_file", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "https_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_port", arg in
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
         match v_enable_pac_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_pac_file", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : explicit_proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explicit_proxy

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type insights__log_analytics_workspace = {
  firewall_location : string prop;
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : insights__log_analytics_workspace) -> ()

let yojson_of_insights__log_analytics_workspace =
  (function
   | { firewall_location = v_firewall_location; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_location
         in
         ("firewall_location", arg) :: bnds
       in
       `Assoc bnds
    : insights__log_analytics_workspace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_insights__log_analytics_workspace

[@@@deriving.end]

type insights = {
  default_log_analytics_workspace_id : string prop;
  enabled : bool prop;
  retention_in_days : float prop option; [@option]
  log_analytics_workspace : insights__log_analytics_workspace list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : insights) -> ()

let yojson_of_insights =
  (function
   | {
       default_log_analytics_workspace_id =
         v_default_log_analytics_workspace_id;
       enabled = v_enabled;
       retention_in_days = v_retention_in_days;
       log_analytics_workspace = v_log_analytics_workspace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_insights__log_analytics_workspace
             v_log_analytics_workspace
         in
         ("log_analytics_workspace", arg) :: bnds
       in
       let bnds =
         match v_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_log_analytics_workspace_id
         in
         ("default_log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : insights -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_insights

[@@@deriving.end]

type intrusion_detection__signature_overrides = {
  id : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : intrusion_detection__signature_overrides) -> ()

let yojson_of_intrusion_detection__signature_overrides =
  (function
   | { id = v_id; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
       `Assoc bnds
    : intrusion_detection__signature_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_intrusion_detection__signature_overrides

[@@@deriving.end]

type intrusion_detection__traffic_bypass = {
  description : string prop option; [@option]
  destination_addresses : string prop list option; [@option]
  destination_ip_groups : string prop list option; [@option]
  destination_ports : string prop list option; [@option]
  name : string prop;
  protocol : string prop;
  source_addresses : string prop list option; [@option]
  source_ip_groups : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : intrusion_detection__traffic_bypass) -> ()

let yojson_of_intrusion_detection__traffic_bypass =
  (function
   | {
       description = v_description;
       destination_addresses = v_destination_addresses;
       destination_ip_groups = v_destination_ip_groups;
       destination_ports = v_destination_ports;
       name = v_name;
       protocol = v_protocol;
       source_addresses = v_source_addresses;
       source_ip_groups = v_source_ip_groups;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_destination_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : intrusion_detection__traffic_bypass ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_intrusion_detection__traffic_bypass

[@@@deriving.end]

type intrusion_detection = {
  mode : string prop option; [@option]
  private_ranges : string prop list option; [@option]
  signature_overrides :
    intrusion_detection__signature_overrides list;
  traffic_bypass : intrusion_detection__traffic_bypass list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : intrusion_detection) -> ()

let yojson_of_intrusion_detection =
  (function
   | {
       mode = v_mode;
       private_ranges = v_private_ranges;
       signature_overrides = v_signature_overrides;
       traffic_bypass = v_traffic_bypass;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_intrusion_detection__traffic_bypass
             v_traffic_bypass
         in
         ("traffic_bypass", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_intrusion_detection__signature_overrides
             v_signature_overrides
         in
         ("signature_overrides", arg) :: bnds
       in
       let bnds =
         match v_private_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "private_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : intrusion_detection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_intrusion_detection

[@@@deriving.end]

type threat_intelligence_allowlist = {
  fqdns : string prop list option; [@option]
  ip_addresses : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_intelligence_allowlist) -> ()

let yojson_of_threat_intelligence_allowlist =
  (function
   | { fqdns = v_fqdns; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "fqdns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : threat_intelligence_allowlist ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_intelligence_allowlist

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

type tls_certificate = {
  key_vault_secret_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tls_certificate) -> ()

let yojson_of_tls_certificate =
  (function
   | { key_vault_secret_id = v_key_vault_secret_id; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_secret_id
         in
         ("key_vault_secret_id", arg) :: bnds
       in
       `Assoc bnds
    : tls_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls_certificate

[@@@deriving.end]

type azurerm_firewall_policy = {
  auto_learn_private_ranges_enabled : bool prop option; [@option]
  base_policy_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  private_ip_ranges : string prop list option; [@option]
  resource_group_name : string prop;
  sku : string prop option; [@option]
  sql_redirect_allowed : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  threat_intelligence_mode : string prop option; [@option]
  dns : dns list;
  explicit_proxy : explicit_proxy list;
  identity : identity list;
  insights : insights list;
  intrusion_detection : intrusion_detection list;
  threat_intelligence_allowlist : threat_intelligence_allowlist list;
  timeouts : timeouts option;
  tls_certificate : tls_certificate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_firewall_policy) -> ()

let yojson_of_azurerm_firewall_policy =
  (function
   | {
       auto_learn_private_ranges_enabled =
         v_auto_learn_private_ranges_enabled;
       base_policy_id = v_base_policy_id;
       id = v_id;
       location = v_location;
       name = v_name;
       private_ip_ranges = v_private_ip_ranges;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       sql_redirect_allowed = v_sql_redirect_allowed;
       tags = v_tags;
       threat_intelligence_mode = v_threat_intelligence_mode;
       dns = v_dns;
       explicit_proxy = v_explicit_proxy;
       identity = v_identity;
       insights = v_insights;
       intrusion_detection = v_intrusion_detection;
       threat_intelligence_allowlist =
         v_threat_intelligence_allowlist;
       timeouts = v_timeouts;
       tls_certificate = v_tls_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tls_certificate v_tls_certificate
         in
         ("tls_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_threat_intelligence_allowlist
             v_threat_intelligence_allowlist
         in
         ("threat_intelligence_allowlist", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_intrusion_detection
             v_intrusion_detection
         in
         ("intrusion_detection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_insights v_insights in
         ("insights", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_explicit_proxy v_explicit_proxy
         in
         ("explicit_proxy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_dns v_dns in
         ("dns", arg) :: bnds
       in
       let bnds =
         match v_threat_intelligence_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "threat_intelligence_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_redirect_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sql_redirect_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_private_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "private_ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_base_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_learn_private_ranges_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_learn_private_ranges_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_firewall_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_firewall_policy

[@@@deriving.end]

let dns ?proxy_enabled ?servers () : dns = { proxy_enabled; servers }

let explicit_proxy ?enable_pac_file ?enabled ?http_port ?https_port
    ?pac_file ?pac_file_port () : explicit_proxy =
  {
    enable_pac_file;
    enabled;
    http_port;
    https_port;
    pac_file;
    pac_file_port;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let insights__log_analytics_workspace ~firewall_location ~id () :
    insights__log_analytics_workspace =
  { firewall_location; id }

let insights ?retention_in_days ?(log_analytics_workspace = [])
    ~default_log_analytics_workspace_id ~enabled () : insights =
  {
    default_log_analytics_workspace_id;
    enabled;
    retention_in_days;
    log_analytics_workspace;
  }

let intrusion_detection__signature_overrides ?id ?state () :
    intrusion_detection__signature_overrides =
  { id; state }

let intrusion_detection__traffic_bypass ?description
    ?destination_addresses ?destination_ip_groups ?destination_ports
    ?source_addresses ?source_ip_groups ~name ~protocol () :
    intrusion_detection__traffic_bypass =
  {
    description;
    destination_addresses;
    destination_ip_groups;
    destination_ports;
    name;
    protocol;
    source_addresses;
    source_ip_groups;
  }

let intrusion_detection ?mode ?private_ranges
    ?(signature_overrides = []) ?(traffic_bypass = []) () :
    intrusion_detection =
  { mode; private_ranges; signature_overrides; traffic_bypass }

let threat_intelligence_allowlist ?fqdns ?ip_addresses () :
    threat_intelligence_allowlist =
  { fqdns; ip_addresses }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tls_certificate ~key_vault_secret_id ~name () : tls_certificate =
  { key_vault_secret_id; name }

let azurerm_firewall_policy ?auto_learn_private_ranges_enabled
    ?base_policy_id ?id ?private_ip_ranges ?sku ?sql_redirect_allowed
    ?tags ?threat_intelligence_mode ?(dns = [])
    ?(explicit_proxy = []) ?(identity = []) ?(insights = [])
    ?(intrusion_detection = []) ?(threat_intelligence_allowlist = [])
    ?timeouts ?(tls_certificate = []) ~location ~name
    ~resource_group_name () : azurerm_firewall_policy =
  {
    auto_learn_private_ranges_enabled;
    base_policy_id;
    id;
    location;
    name;
    private_ip_ranges;
    resource_group_name;
    sku;
    sql_redirect_allowed;
    tags;
    threat_intelligence_mode;
    dns;
    explicit_proxy;
    identity;
    insights;
    intrusion_detection;
    threat_intelligence_allowlist;
    timeouts;
    tls_certificate;
  }

type t = {
  tf_name : string;
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

let make ?auto_learn_private_ranges_enabled ?base_policy_id ?id
    ?private_ip_ranges ?sku ?sql_redirect_allowed ?tags
    ?threat_intelligence_mode ?(dns = []) ?(explicit_proxy = [])
    ?(identity = []) ?(insights = []) ?(intrusion_detection = [])
    ?(threat_intelligence_allowlist = []) ?timeouts
    ?(tls_certificate = []) ~location ~name ~resource_group_name __id
    =
  let __type = "azurerm_firewall_policy" in
  let __attrs =
    ({
       tf_name = __id;
       auto_learn_private_ranges_enabled =
         Prop.computed __type __id
           "auto_learn_private_ranges_enabled";
       base_policy_id = Prop.computed __type __id "base_policy_id";
       child_policies = Prop.computed __type __id "child_policies";
       firewalls = Prop.computed __type __id "firewalls";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_ip_ranges =
         Prop.computed __type __id "private_ip_ranges";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       rule_collection_groups =
         Prop.computed __type __id "rule_collection_groups";
       sku = Prop.computed __type __id "sku";
       sql_redirect_allowed =
         Prop.computed __type __id "sql_redirect_allowed";
       tags = Prop.computed __type __id "tags";
       threat_intelligence_mode =
         Prop.computed __type __id "threat_intelligence_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_firewall_policy
        (azurerm_firewall_policy ?auto_learn_private_ranges_enabled
           ?base_policy_id ?id ?private_ip_ranges ?sku
           ?sql_redirect_allowed ?tags ?threat_intelligence_mode ~dns
           ~explicit_proxy ~identity ~insights ~intrusion_detection
           ~threat_intelligence_allowlist ?timeouts ~tls_certificate
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_learn_private_ranges_enabled
    ?base_policy_id ?id ?private_ip_ranges ?sku ?sql_redirect_allowed
    ?tags ?threat_intelligence_mode ?(dns = [])
    ?(explicit_proxy = []) ?(identity = []) ?(insights = [])
    ?(intrusion_detection = []) ?(threat_intelligence_allowlist = [])
    ?timeouts ?(tls_certificate = []) ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_learn_private_ranges_enabled ?base_policy_id ?id
      ?private_ip_ranges ?sku ?sql_redirect_allowed ?tags
      ?threat_intelligence_mode ~dns ~explicit_proxy ~identity
      ~insights ~intrusion_detection ~threat_intelligence_allowlist
      ?timeouts ~tls_certificate ~location ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_monitor_workspace_integrations = {
  resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_monitor_workspace_integrations) -> ()

let yojson_of_azure_monitor_workspace_integrations =
  (function
   | { resource_id = v_resource_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       `Assoc bnds
    : azure_monitor_workspace_integrations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_monitor_workspace_integrations

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

type smtp = {
  enabled : bool prop option; [@option]
  from_address : string prop;
  from_name : string prop option; [@option]
  host : string prop;
  password : string prop;
  start_tls_policy : string prop;
  user : string prop;
  verification_skip_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : smtp) -> ()

let yojson_of_smtp =
  (function
   | {
       enabled = v_enabled;
       from_address = v_from_address;
       from_name = v_from_name;
       host = v_host;
       password = v_password;
       start_tls_policy = v_start_tls_policy;
       user = v_user;
       verification_skip_enabled = v_verification_skip_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verification_skip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verification_skip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_start_tls_policy
         in
         ("start_tls_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_from_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "from_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_from_address in
         ("from_address", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : smtp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_smtp

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

type azurerm_dashboard_grafana = {
  api_key_enabled : bool prop option; [@option]
  auto_generated_domain_name_label_scope : string prop option;
      [@option]
  deterministic_outbound_ip_enabled : bool prop option; [@option]
  grafana_major_version : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  zone_redundancy_enabled : bool prop option; [@option]
  azure_monitor_workspace_integrations :
    azure_monitor_workspace_integrations list;
  identity : identity list;
  smtp : smtp list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dashboard_grafana) -> ()

let yojson_of_azurerm_dashboard_grafana =
  (function
   | {
       api_key_enabled = v_api_key_enabled;
       auto_generated_domain_name_label_scope =
         v_auto_generated_domain_name_label_scope;
       deterministic_outbound_ip_enabled =
         v_deterministic_outbound_ip_enabled;
       grafana_major_version = v_grafana_major_version;
       id = v_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       zone_redundancy_enabled = v_zone_redundancy_enabled;
       azure_monitor_workspace_integrations =
         v_azure_monitor_workspace_integrations;
       identity = v_identity;
       smtp = v_smtp;
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
         let arg = yojson_of_list yojson_of_smtp v_smtp in
         ("smtp", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_azure_monitor_workspace_integrations
             v_azure_monitor_workspace_integrations
         in
         ("azure_monitor_workspace_integrations", arg) :: bnds
       in
       let bnds =
         match v_zone_redundancy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundancy_enabled", arg in
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
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
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
         match v_grafana_major_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grafana_major_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deterministic_outbound_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deterministic_outbound_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_generated_domain_name_label_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "auto_generated_domain_name_label_scope", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_api_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_dashboard_grafana -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dashboard_grafana

[@@@deriving.end]

let azure_monitor_workspace_integrations ~resource_id () :
    azure_monitor_workspace_integrations =
  { resource_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let smtp ?enabled ?from_name ?verification_skip_enabled ~from_address
    ~host ~password ~start_tls_policy ~user () : smtp =
  {
    enabled;
    from_address;
    from_name;
    host;
    password;
    start_tls_policy;
    user;
    verification_skip_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dashboard_grafana ?api_key_enabled
    ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp () : azurerm_dashboard_grafana =
  {
    api_key_enabled;
    auto_generated_domain_name_label_scope;
    deterministic_outbound_ip_enabled;
    grafana_major_version;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    zone_redundancy_enabled;
    azure_monitor_workspace_integrations;
    identity;
    smtp;
    timeouts;
  }

type t = {
  api_key_enabled : bool prop;
  auto_generated_domain_name_label_scope : string prop;
  deterministic_outbound_ip_enabled : bool prop;
  endpoint : string prop;
  grafana_major_version : string prop;
  grafana_version : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip : string list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundancy_enabled : bool prop;
}

let make ?api_key_enabled ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp __id =
  let __type = "azurerm_dashboard_grafana" in
  let __attrs =
    ({
       api_key_enabled = Prop.computed __type __id "api_key_enabled";
       auto_generated_domain_name_label_scope =
         Prop.computed __type __id
           "auto_generated_domain_name_label_scope";
       deterministic_outbound_ip_enabled =
         Prop.computed __type __id
           "deterministic_outbound_ip_enabled";
       endpoint = Prop.computed __type __id "endpoint";
       grafana_major_version =
         Prop.computed __type __id "grafana_major_version";
       grafana_version = Prop.computed __type __id "grafana_version";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip = Prop.computed __type __id "outbound_ip";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundancy_enabled =
         Prop.computed __type __id "zone_redundancy_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dashboard_grafana
        (azurerm_dashboard_grafana ?api_key_enabled
           ?auto_generated_domain_name_label_scope
           ?deterministic_outbound_ip_enabled ?grafana_major_version
           ?id ?public_network_access_enabled ?sku ?tags
           ?zone_redundancy_enabled ?timeouts ~location ~name
           ~resource_group_name ~azure_monitor_workspace_integrations
           ~identity ~smtp ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_enabled
    ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_enabled ?auto_generated_domain_name_label_scope
      ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
      ?public_network_access_enabled ?sku ?tags
      ?zone_redundancy_enabled ?timeouts ~location ~name
      ~resource_group_name ~azure_monitor_workspace_integrations
      ~identity ~smtp __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cluster_setting = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_setting) -> ()

let yojson_of_cluster_setting =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : cluster_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_setting

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

type inbound_network_dependencies = {
  description : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  ports : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inbound_network_dependencies) -> ()

let yojson_of_inbound_network_dependencies =
  (function
   | {
       description = v_description;
       ip_addresses = v_ip_addresses;
       ports = v_ports;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : inbound_network_dependencies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inbound_network_dependencies

[@@@deriving.end]

type azurerm_app_service_environment_v3 = {
  allow_new_private_endpoint_connections : bool prop option;
      [@option]
  dedicated_host_count : float prop option; [@option]
  id : string prop option; [@option]
  internal_load_balancing_mode : string prop option; [@option]
  name : string prop;
  remote_debugging_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  zone_redundant : bool prop option; [@option]
  cluster_setting : cluster_setting list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_environment_v3) -> ()

let yojson_of_azurerm_app_service_environment_v3 =
  (function
   | {
       allow_new_private_endpoint_connections =
         v_allow_new_private_endpoint_connections;
       dedicated_host_count = v_dedicated_host_count;
       id = v_id;
       internal_load_balancing_mode = v_internal_load_balancing_mode;
       name = v_name;
       remote_debugging_enabled = v_remote_debugging_enabled;
       resource_group_name = v_resource_group_name;
       subnet_id = v_subnet_id;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       cluster_setting = v_cluster_setting;
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
         if [] = v_cluster_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster_setting)
               v_cluster_setting
           in
           let bnd = "cluster_setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_remote_debugging_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remote_debugging_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_internal_load_balancing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internal_load_balancing_mode", arg in
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
         match v_dedicated_host_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dedicated_host_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_new_private_endpoint_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "allow_new_private_endpoint_connections", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_environment_v3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_environment_v3

[@@@deriving.end]

let cluster_setting ~name ~value () : cluster_setting =
  { name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_environment_v3
    ?allow_new_private_endpoint_connections ?dedicated_host_count ?id
    ?internal_load_balancing_mode ?remote_debugging_enabled ?tags
    ?zone_redundant ?(cluster_setting = []) ?timeouts ~name
    ~resource_group_name ~subnet_id () :
    azurerm_app_service_environment_v3 =
  {
    allow_new_private_endpoint_connections;
    dedicated_host_count;
    id;
    internal_load_balancing_mode;
    name;
    remote_debugging_enabled;
    resource_group_name;
    subnet_id;
    tags;
    zone_redundant;
    cluster_setting;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_new_private_endpoint_connections : bool prop;
  dedicated_host_count : float prop;
  dns_suffix : string prop;
  external_inbound_ip_addresses : string list prop;
  id : string prop;
  inbound_network_dependencies :
    inbound_network_dependencies list prop;
  internal_inbound_ip_addresses : string list prop;
  internal_load_balancing_mode : string prop;
  ip_ssl_address_count : float prop;
  linux_outbound_ip_addresses : string list prop;
  location : string prop;
  name : string prop;
  pricing_tier : string prop;
  remote_debugging_enabled : bool prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  windows_outbound_ip_addresses : string list prop;
  zone_redundant : bool prop;
}

let make ?allow_new_private_endpoint_connections
    ?dedicated_host_count ?id ?internal_load_balancing_mode
    ?remote_debugging_enabled ?tags ?zone_redundant
    ?(cluster_setting = []) ?timeouts ~name ~resource_group_name
    ~subnet_id __id =
  let __type = "azurerm_app_service_environment_v3" in
  let __attrs =
    ({
       tf_name = __id;
       allow_new_private_endpoint_connections =
         Prop.computed __type __id
           "allow_new_private_endpoint_connections";
       dedicated_host_count =
         Prop.computed __type __id "dedicated_host_count";
       dns_suffix = Prop.computed __type __id "dns_suffix";
       external_inbound_ip_addresses =
         Prop.computed __type __id "external_inbound_ip_addresses";
       id = Prop.computed __type __id "id";
       inbound_network_dependencies =
         Prop.computed __type __id "inbound_network_dependencies";
       internal_inbound_ip_addresses =
         Prop.computed __type __id "internal_inbound_ip_addresses";
       internal_load_balancing_mode =
         Prop.computed __type __id "internal_load_balancing_mode";
       ip_ssl_address_count =
         Prop.computed __type __id "ip_ssl_address_count";
       linux_outbound_ip_addresses =
         Prop.computed __type __id "linux_outbound_ip_addresses";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pricing_tier = Prop.computed __type __id "pricing_tier";
       remote_debugging_enabled =
         Prop.computed __type __id "remote_debugging_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       windows_outbound_ip_addresses =
         Prop.computed __type __id "windows_outbound_ip_addresses";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_environment_v3
        (azurerm_app_service_environment_v3
           ?allow_new_private_endpoint_connections
           ?dedicated_host_count ?id ?internal_load_balancing_mode
           ?remote_debugging_enabled ?tags ?zone_redundant
           ~cluster_setting ?timeouts ~name ~resource_group_name
           ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_new_private_endpoint_connections
    ?dedicated_host_count ?id ?internal_load_balancing_mode
    ?remote_debugging_enabled ?tags ?zone_redundant
    ?(cluster_setting = []) ?timeouts ~name ~resource_group_name
    ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_new_private_endpoint_connections
      ?dedicated_host_count ?id ?internal_load_balancing_mode
      ?remote_debugging_enabled ?tags ?zone_redundant
      ~cluster_setting ?timeouts ~name ~resource_group_name
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

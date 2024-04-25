(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type local_diagnostics_access = {
  authentication_type : string prop;
  https_server_certificate_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_diagnostics_access) -> ()

let yojson_of_local_diagnostics_access =
  (function
   | {
       authentication_type = v_authentication_type;
       https_server_certificate_url = v_https_server_certificate_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_https_server_certificate_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_server_certificate_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : local_diagnostics_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_diagnostics_access

[@@@deriving.end]

type platform = {
  arc_kubernetes_cluster_id : string prop option; [@option]
  custom_location_id : string prop option; [@option]
  edge_device_id : string prop option; [@option]
  stack_hci_cluster_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : platform) -> ()

let yojson_of_platform =
  (function
   | {
       arc_kubernetes_cluster_id = v_arc_kubernetes_cluster_id;
       custom_location_id = v_custom_location_id;
       edge_device_id = v_edge_device_id;
       stack_hci_cluster_id = v_stack_hci_cluster_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_stack_hci_cluster_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_hci_cluster_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_device_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_device_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_location_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_location_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arc_kubernetes_cluster_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arc_kubernetes_cluster_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : platform -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_platform

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

type azurerm_mobile_network_packet_core_control_plane = {
  control_plane_access_ipv4_address : string prop option; [@option]
  control_plane_access_ipv4_gateway : string prop option; [@option]
  control_plane_access_ipv4_subnet : string prop option; [@option]
  control_plane_access_name : string prop option; [@option]
  core_network_technology : string prop option; [@option]
  id : string prop option; [@option]
  interoperability_settings_json : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  site_ids : string prop list;
  sku : string prop;
  software_version : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  user_equipment_mtu_in_bytes : float prop option; [@option]
  identity : identity list;
  local_diagnostics_access : local_diagnostics_access list;
  platform : platform list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_mobile_network_packet_core_control_plane) -> ()

let yojson_of_azurerm_mobile_network_packet_core_control_plane =
  (function
   | {
       control_plane_access_ipv4_address =
         v_control_plane_access_ipv4_address;
       control_plane_access_ipv4_gateway =
         v_control_plane_access_ipv4_gateway;
       control_plane_access_ipv4_subnet =
         v_control_plane_access_ipv4_subnet;
       control_plane_access_name = v_control_plane_access_name;
       core_network_technology = v_core_network_technology;
       id = v_id;
       interoperability_settings_json =
         v_interoperability_settings_json;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       site_ids = v_site_ids;
       sku = v_sku;
       software_version = v_software_version;
       tags = v_tags;
       user_equipment_mtu_in_bytes = v_user_equipment_mtu_in_bytes;
       identity = v_identity;
       local_diagnostics_access = v_local_diagnostics_access;
       platform = v_platform;
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
         let arg = yojson_of_list yojson_of_platform v_platform in
         ("platform", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_local_diagnostics_access
             v_local_diagnostics_access
         in
         ("local_diagnostics_access", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_user_equipment_mtu_in_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "user_equipment_mtu_in_bytes", arg in
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
         match v_software_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "software_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_site_ids
         in
         ("site_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_interoperability_settings_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interoperability_settings_json", arg in
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
         match v_core_network_technology with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "core_network_technology", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane_access_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_plane_access_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane_access_ipv4_subnet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_plane_access_ipv4_subnet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane_access_ipv4_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_plane_access_ipv4_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane_access_ipv4_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_plane_access_ipv4_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_packet_core_control_plane ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_packet_core_control_plane

[@@@deriving.end]

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let local_diagnostics_access ?https_server_certificate_url
    ~authentication_type () : local_diagnostics_access =
  { authentication_type; https_server_certificate_url }

let platform ?arc_kubernetes_cluster_id ?custom_location_id
    ?edge_device_id ?stack_hci_cluster_id ~type_ () : platform =
  {
    arc_kubernetes_cluster_id;
    custom_location_id;
    edge_device_id;
    stack_hci_cluster_id;
    type_;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_packet_core_control_plane
    ?control_plane_access_ipv4_address
    ?control_plane_access_ipv4_gateway
    ?control_plane_access_ipv4_subnet ?control_plane_access_name
    ?core_network_technology ?id ?interoperability_settings_json
    ?software_version ?tags ?user_equipment_mtu_in_bytes
    ?(identity = []) ?(platform = []) ?timeouts ~location ~name
    ~resource_group_name ~site_ids ~sku ~local_diagnostics_access ()
    : azurerm_mobile_network_packet_core_control_plane =
  {
    control_plane_access_ipv4_address;
    control_plane_access_ipv4_gateway;
    control_plane_access_ipv4_subnet;
    control_plane_access_name;
    core_network_technology;
    id;
    interoperability_settings_json;
    location;
    name;
    resource_group_name;
    site_ids;
    sku;
    software_version;
    tags;
    user_equipment_mtu_in_bytes;
    identity;
    local_diagnostics_access;
    platform;
    timeouts;
  }

type t = {
  control_plane_access_ipv4_address : string prop;
  control_plane_access_ipv4_gateway : string prop;
  control_plane_access_ipv4_subnet : string prop;
  control_plane_access_name : string prop;
  core_network_technology : string prop;
  id : string prop;
  interoperability_settings_json : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  site_ids : string list prop;
  sku : string prop;
  software_version : string prop;
  tags : (string * string) list prop;
  user_equipment_mtu_in_bytes : float prop;
}

let make ?control_plane_access_ipv4_address
    ?control_plane_access_ipv4_gateway
    ?control_plane_access_ipv4_subnet ?control_plane_access_name
    ?core_network_technology ?id ?interoperability_settings_json
    ?software_version ?tags ?user_equipment_mtu_in_bytes
    ?(identity = []) ?(platform = []) ?timeouts ~location ~name
    ~resource_group_name ~site_ids ~sku ~local_diagnostics_access
    __id =
  let __type = "azurerm_mobile_network_packet_core_control_plane" in
  let __attrs =
    ({
       control_plane_access_ipv4_address =
         Prop.computed __type __id
           "control_plane_access_ipv4_address";
       control_plane_access_ipv4_gateway =
         Prop.computed __type __id
           "control_plane_access_ipv4_gateway";
       control_plane_access_ipv4_subnet =
         Prop.computed __type __id "control_plane_access_ipv4_subnet";
       control_plane_access_name =
         Prop.computed __type __id "control_plane_access_name";
       core_network_technology =
         Prop.computed __type __id "core_network_technology";
       id = Prop.computed __type __id "id";
       interoperability_settings_json =
         Prop.computed __type __id "interoperability_settings_json";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_ids = Prop.computed __type __id "site_ids";
       sku = Prop.computed __type __id "sku";
       software_version =
         Prop.computed __type __id "software_version";
       tags = Prop.computed __type __id "tags";
       user_equipment_mtu_in_bytes =
         Prop.computed __type __id "user_equipment_mtu_in_bytes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_packet_core_control_plane
        (azurerm_mobile_network_packet_core_control_plane
           ?control_plane_access_ipv4_address
           ?control_plane_access_ipv4_gateway
           ?control_plane_access_ipv4_subnet
           ?control_plane_access_name ?core_network_technology ?id
           ?interoperability_settings_json ?software_version ?tags
           ?user_equipment_mtu_in_bytes ~identity ~platform ?timeouts
           ~location ~name ~resource_group_name ~site_ids ~sku
           ~local_diagnostics_access ());
    attrs = __attrs;
  }

let register ?tf_module ?control_plane_access_ipv4_address
    ?control_plane_access_ipv4_gateway
    ?control_plane_access_ipv4_subnet ?control_plane_access_name
    ?core_network_technology ?id ?interoperability_settings_json
    ?software_version ?tags ?user_equipment_mtu_in_bytes
    ?(identity = []) ?(platform = []) ?timeouts ~location ~name
    ~resource_group_name ~site_ids ~sku ~local_diagnostics_access
    __id =
  let (r : _ Tf_core.resource) =
    make ?control_plane_access_ipv4_address
      ?control_plane_access_ipv4_gateway
      ?control_plane_access_ipv4_subnet ?control_plane_access_name
      ?core_network_technology ?id ?interoperability_settings_json
      ?software_version ?tags ?user_equipment_mtu_in_bytes ~identity
      ~platform ?timeouts ~location ~name ~resource_group_name
      ~site_ids ~sku ~local_diagnostics_access __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

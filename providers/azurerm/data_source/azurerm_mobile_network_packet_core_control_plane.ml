(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type local_diagnostics_access = {
  authentication_type : string prop;
  https_server_certificate_url : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_https_server_certificate_url
         in
         ("https_server_certificate_url", arg) :: bnds
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
  arc_kubernetes_cluster_id : string prop;
  custom_location_id : string prop;
  edge_device_id : string prop;
  stack_hci_cluster_id : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_stack_hci_cluster_id
         in
         ("stack_hci_cluster_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_edge_device_id
         in
         ("edge_device_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_location_id
         in
         ("custom_location_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_arc_kubernetes_cluster_id
         in
         ("arc_kubernetes_cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : platform -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_platform

[@@@deriving.end]

type azurerm_mobile_network_packet_core_control_plane = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_mobile_network_packet_core_control_plane) -> ()

let yojson_of_azurerm_mobile_network_packet_core_control_plane =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_packet_core_control_plane ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_packet_core_control_plane

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_packet_core_control_plane ?id ?timeouts
    ~name ~resource_group_name () :
    azurerm_mobile_network_packet_core_control_plane =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  control_plane_access_ipv4_address : string prop;
  control_plane_access_ipv4_gateway : string prop;
  control_plane_access_ipv4_subnet : string prop;
  control_plane_access_name : string prop;
  core_network_technology : string prop;
  id : string prop;
  identity : identity list prop;
  interoperability_settings_json : string prop;
  local_diagnostics_access : local_diagnostics_access list prop;
  location : string prop;
  name : string prop;
  platform : platform list prop;
  resource_group_name : string prop;
  site_ids : string list prop;
  sku : string prop;
  software_version : string prop;
  tags : (string * string) list prop;
  user_equipment_mtu_in_bytes : float prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_mobile_network_packet_core_control_plane" in
  let __attrs =
    ({
       tf_name = __id;
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
       identity = Prop.computed __type __id "identity";
       interoperability_settings_json =
         Prop.computed __type __id "interoperability_settings_json";
       local_diagnostics_access =
         Prop.computed __type __id "local_diagnostics_access";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform = Prop.computed __type __id "platform";
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
        (azurerm_mobile_network_packet_core_control_plane ?id
           ?timeouts ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

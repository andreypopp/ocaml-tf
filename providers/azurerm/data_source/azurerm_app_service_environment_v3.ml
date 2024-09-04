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

type inbound_network_dependencies = {
  description : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
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
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_environment_v3) -> ()

let yojson_of_azurerm_app_service_environment_v3 =
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
    : azurerm_app_service_environment_v3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_environment_v3

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_app_service_environment_v3 ?id ?timeouts ~name
    ~resource_group_name () : azurerm_app_service_environment_v3 =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  allow_new_private_endpoint_connections : bool prop;
  cluster_setting : cluster_setting list prop;
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
  tags : string Tf_core.assoc prop;
  windows_outbound_ip_addresses : string list prop;
  zone_redundant : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_app_service_environment_v3" in
  let __attrs =
    ({
       tf_name = __id;
       allow_new_private_endpoint_connections =
         Prop.computed __type __id
           "allow_new_private_endpoint_connections";
       cluster_setting = Prop.computed __type __id "cluster_setting";
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
        (azurerm_app_service_environment_v3 ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

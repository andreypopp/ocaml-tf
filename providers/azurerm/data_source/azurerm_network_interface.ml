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

type ip_configuration = {
  application_gateway_backend_address_pools_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  application_security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gateway_load_balancer_frontend_ip_configuration_id : string prop;
  load_balancer_backend_address_pools_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer_inbound_nat_rules_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  primary : bool prop;
  private_ip_address : string prop;
  private_ip_address_allocation : string prop;
  private_ip_address_version : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       application_gateway_backend_address_pools_ids =
         v_application_gateway_backend_address_pools_ids;
       application_security_group_ids =
         v_application_security_group_ids;
       gateway_load_balancer_frontend_ip_configuration_id =
         v_gateway_load_balancer_frontend_ip_configuration_id;
       load_balancer_backend_address_pools_ids =
         v_load_balancer_backend_address_pools_ids;
       load_balancer_inbound_nat_rules_ids =
         v_load_balancer_inbound_nat_rules_ids;
       name = v_name;
       primary = v_primary;
       private_ip_address = v_private_ip_address;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       private_ip_address_version = v_private_ip_address_version;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_ip_address_version
         in
         ("private_ip_address_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_ip_address_allocation
         in
         ("private_ip_address_allocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer_inbound_nat_rules_ids
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_load_balancer_inbound_nat_rules_ids
           in
           let bnd = "load_balancer_inbound_nat_rules_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer_backend_address_pools_ids
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_load_balancer_backend_address_pools_ids
           in
           let bnd =
             "load_balancer_backend_address_pools_ids", arg
           in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_gateway_load_balancer_frontend_ip_configuration_id
         in
         ("gateway_load_balancer_frontend_ip_configuration_id", arg)
         :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_security_group_ids then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_application_security_group_ids
           in
           let bnd = "application_security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_application_gateway_backend_address_pools_ids
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_application_gateway_backend_address_pools_ids
           in
           let bnd =
             "application_gateway_backend_address_pools_ids", arg
           in
           bnd :: bnds
       in
       `Assoc bnds
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

[@@@deriving.end]

type azurerm_network_interface = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_interface) -> ()

let yojson_of_azurerm_network_interface =
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
    : azurerm_network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_interface

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_network_interface ?id ?timeouts ~name
    ~resource_group_name () : azurerm_network_interface =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  accelerated_networking_enabled : bool prop;
  applied_dns_servers : string list prop;
  dns_servers : string list prop;
  enable_accelerated_networking : bool prop;
  enable_ip_forwarding : bool prop;
  id : string prop;
  internal_dns_name_label : string prop;
  ip_configuration : ip_configuration list prop;
  ip_forwarding_enabled : bool prop;
  location : string prop;
  mac_address : string prop;
  name : string prop;
  network_security_group_id : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_network_interface" in
  let __attrs =
    ({
       tf_name = __id;
       accelerated_networking_enabled =
         Prop.computed __type __id "accelerated_networking_enabled";
       applied_dns_servers =
         Prop.computed __type __id "applied_dns_servers";
       dns_servers = Prop.computed __type __id "dns_servers";
       enable_accelerated_networking =
         Prop.computed __type __id "enable_accelerated_networking";
       enable_ip_forwarding =
         Prop.computed __type __id "enable_ip_forwarding";
       id = Prop.computed __type __id "id";
       internal_dns_name_label =
         Prop.computed __type __id "internal_dns_name_label";
       ip_configuration =
         Prop.computed __type __id "ip_configuration";
       ip_forwarding_enabled =
         Prop.computed __type __id "ip_forwarding_enabled";
       location = Prop.computed __type __id "location";
       mac_address = Prop.computed __type __id "mac_address";
       name = Prop.computed __type __id "name";
       network_security_group_id =
         Prop.computed __type __id "network_security_group_id";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_interface
        (azurerm_network_interface ?id ?timeouts ~name
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

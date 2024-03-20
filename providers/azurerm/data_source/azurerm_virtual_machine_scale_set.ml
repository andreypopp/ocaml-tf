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
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
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

type instances = {
  computer_name : string prop;
  instance_id : string prop;
  latest_model_applied : bool prop;
  name : string prop;
  power_state : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string prop list;
  public_ip_address : string prop;
  public_ip_addresses : string prop list;
  virtual_machine_id : string prop;
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instances) -> ()

let yojson_of_instances =
  (function
   | {
       computer_name = v_computer_name;
       instance_id = v_instance_id;
       latest_model_applied = v_latest_model_applied;
       name = v_name;
       power_state = v_power_state;
       private_ip_address = v_private_ip_address;
       private_ip_addresses = v_private_ip_addresses;
       public_ip_address = v_public_ip_address;
       public_ip_addresses = v_public_ip_addresses;
       virtual_machine_id = v_virtual_machine_id;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_public_ip_addresses
         in
         ("public_ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address
         in
         ("public_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_private_ip_addresses
         in
         ("private_ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_power_state in
         ("power_state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_latest_model_applied
         in
         ("latest_model_applied", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_computer_name in
         ("computer_name", arg) :: bnds
       in
       `Assoc bnds
    : instances -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instances

[@@@deriving.end]

type network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       network_interface__ip_configuration__public_ip_address__ip_tag) ->
  ()

let yojson_of_network_interface__ip_configuration__public_ip_address__ip_tag
    =
  (function
   | { tag = v_tag; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__ip_configuration__public_ip_address__ip_tag ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_interface__ip_configuration__public_ip_address__ip_tag

[@@@deriving.end]

type network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string prop;
  idle_timeout_in_minutes : float prop;
  ip_tag :
    network_interface__ip_configuration__public_ip_address__ip_tag
    list;
  name : string prop;
  public_ip_prefix_id : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : network_interface__ip_configuration__public_ip_address) ->
  ()

let yojson_of_network_interface__ip_configuration__public_ip_address
    =
  (function
   | {
       domain_name_label = v_domain_name_label;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       ip_tag = v_ip_tag;
       name = v_name;
       public_ip_prefix_id = v_public_ip_prefix_id;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_prefix_id
         in
         ("public_ip_prefix_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_interface__ip_configuration__public_ip_address__ip_tag
             v_ip_tag
         in
         ("ip_tag", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_idle_timeout_in_minutes
         in
         ("idle_timeout_in_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_name_label
         in
         ("domain_name_label", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__ip_configuration__public_ip_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_interface__ip_configuration__public_ip_address

[@@@deriving.end]

type network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids : string prop list;
  application_security_group_ids : string prop list;
  load_balancer_backend_address_pool_ids : string prop list;
  load_balancer_inbound_nat_rules_ids : string prop list;
  name : string prop;
  primary : bool prop;
  public_ip_address :
    network_interface__ip_configuration__public_ip_address list;
  subnet_id : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__ip_configuration) -> ()

let yojson_of_network_interface__ip_configuration =
  (function
   | {
       application_gateway_backend_address_pool_ids =
         v_application_gateway_backend_address_pool_ids;
       application_security_group_ids =
         v_application_security_group_ids;
       load_balancer_backend_address_pool_ids =
         v_load_balancer_backend_address_pool_ids;
       load_balancer_inbound_nat_rules_ids =
         v_load_balancer_inbound_nat_rules_ids;
       name = v_name;
       primary = v_primary;
       public_ip_address = v_public_ip_address;
       subnet_id = v_subnet_id;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_interface__ip_configuration__public_ip_address
             v_public_ip_address
         in
         ("public_ip_address", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_load_balancer_inbound_nat_rules_ids
         in
         ("load_balancer_inbound_nat_rules_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_load_balancer_backend_address_pool_ids
         in
         ("load_balancer_backend_address_pool_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_application_security_group_ids
         in
         ("application_security_group_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_application_gateway_backend_address_pool_ids
         in
         ("application_gateway_backend_address_pool_ids", arg)
         :: bnds
       in
       `Assoc bnds
    : network_interface__ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__ip_configuration

[@@@deriving.end]

type network_interface = {
  dns_servers : string prop list;
  enable_accelerated_networking : bool prop;
  enable_ip_forwarding : bool prop;
  ip_configuration : network_interface__ip_configuration list;
  name : string prop;
  network_security_group_id : string prop;
  primary : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       dns_servers = v_dns_servers;
       enable_accelerated_networking =
         v_enable_accelerated_networking;
       enable_ip_forwarding = v_enable_ip_forwarding;
       ip_configuration = v_ip_configuration;
       name = v_name;
       network_security_group_id = v_network_security_group_id;
       primary = v_primary;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_network_security_group_id
         in
         ("network_security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_interface__ip_configuration
             v_ip_configuration
         in
         ("ip_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_ip_forwarding
         in
         ("enable_ip_forwarding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_accelerated_networking
         in
         ("enable_accelerated_networking", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_dns_servers
         in
         ("dns_servers", arg) :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

type azurerm_virtual_machine_scale_set = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine_scale_set) -> ()

let yojson_of_azurerm_virtual_machine_scale_set =
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
    : azurerm_virtual_machine_scale_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_scale_set

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_machine_scale_set ?id ?timeouts ~name
    ~resource_group_name () : azurerm_virtual_machine_scale_set =
  { id; name; resource_group_name; timeouts }

type t = {
  id : string prop;
  identity : identity list prop;
  instances : instances list prop;
  location : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_machine_scale_set" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       instances = Prop.computed __type __id "instances";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_interface =
         Prop.computed __type __id "network_interface";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_scale_set
        (azurerm_virtual_machine_scale_set ?id ?timeouts ~name
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

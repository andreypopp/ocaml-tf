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

type backend_address__inbound_nat_rule_port_mapping = {
  backend_port : float prop;
  frontend_port : float prop;
  inbound_nat_rule_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backend_address__inbound_nat_rule_port_mapping) -> ()

let yojson_of_backend_address__inbound_nat_rule_port_mapping =
  (function
   | {
       backend_port = v_backend_port;
       frontend_port = v_frontend_port;
       inbound_nat_rule_name = v_inbound_nat_rule_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_inbound_nat_rule_name
         in
         ("inbound_nat_rule_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_frontend_port in
         ("frontend_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backend_port in
         ("backend_port", arg) :: bnds
       in
       `Assoc bnds
    : backend_address__inbound_nat_rule_port_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_address__inbound_nat_rule_port_mapping

[@@@deriving.end]

type backend_address = {
  inbound_nat_rule_port_mapping :
    backend_address__inbound_nat_rule_port_mapping list;
  ip_address : string prop;
  name : string prop;
  virtual_network_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_address) -> ()

let yojson_of_backend_address =
  (function
   | {
       inbound_nat_rule_port_mapping =
         v_inbound_nat_rule_port_mapping;
       ip_address = v_ip_address;
       name = v_name;
       virtual_network_id = v_virtual_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_network_id
         in
         ("virtual_network_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backend_address__inbound_nat_rule_port_mapping
             v_inbound_nat_rule_port_mapping
         in
         ("inbound_nat_rule_port_mapping", arg) :: bnds
       in
       `Assoc bnds
    : backend_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_address

[@@@deriving.end]

type backend_ip_configurations = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_ip_configurations) -> ()

let yojson_of_backend_ip_configurations =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : backend_ip_configurations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_ip_configurations

[@@@deriving.end]

type azurerm_lb_backend_address_pool = {
  id : string prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_backend_address_pool) -> ()

let yojson_of_azurerm_lb_backend_address_pool =
  (function
   | {
       id = v_id;
       loadbalancer_id = v_loadbalancer_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_loadbalancer_id
         in
         ("loadbalancer_id", arg) :: bnds
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
    : azurerm_lb_backend_address_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_backend_address_pool

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_lb_backend_address_pool ?id ?timeouts ~loadbalancer_id
    ~name () : azurerm_lb_backend_address_pool =
  { id; loadbalancer_id; name; timeouts }

type t = {
  backend_address : backend_address list prop;
  backend_ip_configurations : backend_ip_configurations list prop;
  id : string prop;
  inbound_nat_rules : string list prop;
  load_balancing_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  outbound_rules : string list prop;
}

let make ?id ?timeouts ~loadbalancer_id ~name __id =
  let __type = "azurerm_lb_backend_address_pool" in
  let __attrs =
    ({
       backend_address = Prop.computed __type __id "backend_address";
       backend_ip_configurations =
         Prop.computed __type __id "backend_ip_configurations";
       id = Prop.computed __type __id "id";
       inbound_nat_rules =
         Prop.computed __type __id "inbound_nat_rules";
       load_balancing_rules =
         Prop.computed __type __id "load_balancing_rules";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       outbound_rules = Prop.computed __type __id "outbound_rules";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_backend_address_pool
        (azurerm_lb_backend_address_pool ?id ?timeouts
           ~loadbalancer_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~loadbalancer_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~loadbalancer_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

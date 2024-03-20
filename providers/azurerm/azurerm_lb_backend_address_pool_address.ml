(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type inbound_nat_rule_port_mapping = {
  backend_port : float prop;
  frontend_port : float prop;
  inbound_nat_rule_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inbound_nat_rule_port_mapping) -> ()

let yojson_of_inbound_nat_rule_port_mapping =
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
    : inbound_nat_rule_port_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inbound_nat_rule_port_mapping

[@@@deriving.end]

type azurerm_lb_backend_address_pool_address = {
  backend_address_ip_configuration_id : string prop option; [@option]
  backend_address_pool_id : string prop;
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  name : string prop;
  virtual_network_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_backend_address_pool_address) -> ()

let yojson_of_azurerm_lb_backend_address_pool_address =
  (function
   | {
       backend_address_ip_configuration_id =
         v_backend_address_ip_configuration_id;
       backend_address_pool_id = v_backend_address_pool_id;
       id = v_id;
       ip_address = v_ip_address;
       name = v_name;
       virtual_network_id = v_virtual_network_id;
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
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_backend_address_pool_id
         in
         ("backend_address_pool_id", arg) :: bnds
       in
       let bnds =
         match v_backend_address_ip_configuration_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_address_ip_configuration_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lb_backend_address_pool_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_backend_address_pool_address

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_backend_address_pool_address
    ?backend_address_ip_configuration_id ?id ?ip_address
    ?virtual_network_id ?timeouts ~backend_address_pool_id ~name () :
    azurerm_lb_backend_address_pool_address =
  {
    backend_address_ip_configuration_id;
    backend_address_pool_id;
    id;
    ip_address;
    name;
    virtual_network_id;
    timeouts;
  }

type t = {
  backend_address_ip_configuration_id : string prop;
  backend_address_pool_id : string prop;
  id : string prop;
  inbound_nat_rule_port_mapping :
    inbound_nat_rule_port_mapping list prop;
  ip_address : string prop;
  name : string prop;
  virtual_network_id : string prop;
}

let make ?backend_address_ip_configuration_id ?id ?ip_address
    ?virtual_network_id ?timeouts ~backend_address_pool_id ~name __id
    =
  let __type = "azurerm_lb_backend_address_pool_address" in
  let __attrs =
    ({
       backend_address_ip_configuration_id =
         Prop.computed __type __id
           "backend_address_ip_configuration_id";
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       id = Prop.computed __type __id "id";
       inbound_nat_rule_port_mapping =
         Prop.computed __type __id "inbound_nat_rule_port_mapping";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_backend_address_pool_address
        (azurerm_lb_backend_address_pool_address
           ?backend_address_ip_configuration_id ?id ?ip_address
           ?virtual_network_id ?timeouts ~backend_address_pool_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend_address_ip_configuration_id ?id
    ?ip_address ?virtual_network_id ?timeouts
    ~backend_address_pool_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?backend_address_ip_configuration_id ?id ?ip_address
      ?virtual_network_id ?timeouts ~backend_address_pool_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

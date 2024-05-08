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

type tunnel_interface = {
  identifier : float prop;
  port : float prop;
  protocol : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tunnel_interface) -> ()

let yojson_of_tunnel_interface =
  (function
   | {
       identifier = v_identifier;
       port = v_port;
       protocol = v_protocol;
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
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_identifier in
         ("identifier", arg) :: bnds
       in
       `Assoc bnds
    : tunnel_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tunnel_interface

[@@@deriving.end]

type azurerm_lb_backend_address_pool = {
  id : string prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  virtual_network_id : string prop option; [@option]
  timeouts : timeouts option;
  tunnel_interface : tunnel_interface list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_backend_address_pool) -> ()

let yojson_of_azurerm_lb_backend_address_pool =
  (function
   | {
       id = v_id;
       loadbalancer_id = v_loadbalancer_id;
       name = v_name;
       virtual_network_id = v_virtual_network_id;
       timeouts = v_timeouts;
       tunnel_interface = v_tunnel_interface;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tunnel_interface then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tunnel_interface)
               v_tunnel_interface
           in
           let bnd = "tunnel_interface", arg in
           bnd :: bnds
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

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tunnel_interface ~identifier ~port ~protocol ~type_ () :
    tunnel_interface =
  { identifier; port; protocol; type_ }

let azurerm_lb_backend_address_pool ?id ?virtual_network_id ?timeouts
    ?(tunnel_interface = []) ~loadbalancer_id ~name () :
    azurerm_lb_backend_address_pool =
  {
    id;
    loadbalancer_id;
    name;
    virtual_network_id;
    timeouts;
    tunnel_interface;
  }

type t = {
  tf_name : string;
  backend_ip_configurations : string list prop;
  id : string prop;
  inbound_nat_rules : string list prop;
  load_balancing_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  outbound_rules : string list prop;
  virtual_network_id : string prop;
}

let make ?id ?virtual_network_id ?timeouts ?(tunnel_interface = [])
    ~loadbalancer_id ~name __id =
  let __type = "azurerm_lb_backend_address_pool" in
  let __attrs =
    ({
       tf_name = __id;
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
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_backend_address_pool
        (azurerm_lb_backend_address_pool ?id ?virtual_network_id
           ?timeouts ~tunnel_interface ~loadbalancer_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?virtual_network_id ?timeouts
    ?(tunnel_interface = []) ~loadbalancer_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?virtual_network_id ?timeouts ~tunnel_interface
      ~loadbalancer_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

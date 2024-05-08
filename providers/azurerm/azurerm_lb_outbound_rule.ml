(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type frontend_ip_configuration = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_ip_configuration) -> ()

let yojson_of_frontend_ip_configuration =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : frontend_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_ip_configuration

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

type azurerm_lb_outbound_rule = {
  allocated_outbound_ports : float prop option; [@option]
  backend_address_pool_id : string prop;
  enable_tcp_reset : bool prop option; [@option]
  id : string prop option; [@option]
  idle_timeout_in_minutes : float prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  frontend_ip_configuration : frontend_ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_outbound_rule) -> ()

let yojson_of_azurerm_lb_outbound_rule =
  (function
   | {
       allocated_outbound_ports = v_allocated_outbound_ports;
       backend_address_pool_id = v_backend_address_pool_id;
       enable_tcp_reset = v_enable_tcp_reset;
       id = v_id;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       loadbalancer_id = v_loadbalancer_id;
       name = v_name;
       protocol = v_protocol;
       frontend_ip_configuration = v_frontend_ip_configuration;
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
         if Stdlib.( = ) [] v_frontend_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_ip_configuration)
               v_frontend_ip_configuration
           in
           let bnd = "frontend_ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
         match v_idle_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_in_minutes", arg in
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
         match v_enable_tcp_reset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_tcp_reset", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_address_pool_id
         in
         ("backend_address_pool_id", arg) :: bnds
       in
       let bnds =
         match v_allocated_outbound_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocated_outbound_ports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lb_outbound_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_outbound_rule

[@@@deriving.end]

let frontend_ip_configuration ~name () : frontend_ip_configuration =
  { name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_outbound_rule ?allocated_outbound_ports
    ?enable_tcp_reset ?id ?idle_timeout_in_minutes
    ?(frontend_ip_configuration = []) ?timeouts
    ~backend_address_pool_id ~loadbalancer_id ~name ~protocol () :
    azurerm_lb_outbound_rule =
  {
    allocated_outbound_ports;
    backend_address_pool_id;
    enable_tcp_reset;
    id;
    idle_timeout_in_minutes;
    loadbalancer_id;
    name;
    protocol;
    frontend_ip_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  allocated_outbound_ports : float prop;
  backend_address_pool_id : string prop;
  enable_tcp_reset : bool prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
}

let make ?allocated_outbound_ports ?enable_tcp_reset ?id
    ?idle_timeout_in_minutes ?(frontend_ip_configuration = [])
    ?timeouts ~backend_address_pool_id ~loadbalancer_id ~name
    ~protocol __id =
  let __type = "azurerm_lb_outbound_rule" in
  let __attrs =
    ({
       tf_name = __id;
       allocated_outbound_ports =
         Prop.computed __type __id "allocated_outbound_ports";
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       enable_tcp_reset =
         Prop.computed __type __id "enable_tcp_reset";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       protocol = Prop.computed __type __id "protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_outbound_rule
        (azurerm_lb_outbound_rule ?allocated_outbound_ports
           ?enable_tcp_reset ?id ?idle_timeout_in_minutes
           ~frontend_ip_configuration ?timeouts
           ~backend_address_pool_id ~loadbalancer_id ~name ~protocol
           ());
    attrs = __attrs;
  }

let register ?tf_module ?allocated_outbound_ports ?enable_tcp_reset
    ?id ?idle_timeout_in_minutes ?(frontend_ip_configuration = [])
    ?timeouts ~backend_address_pool_id ~loadbalancer_id ~name
    ~protocol __id =
  let (r : _ Tf_core.resource) =
    make ?allocated_outbound_ports ?enable_tcp_reset ?id
      ?idle_timeout_in_minutes ~frontend_ip_configuration ?timeouts
      ~backend_address_pool_id ~loadbalancer_id ~name ~protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_lb_nat_rule = {
  backend_address_pool_id : string prop option; [@option]
  backend_port : float prop;
  enable_floating_ip : bool prop option; [@option]
  enable_tcp_reset : bool prop option; [@option]
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop option; [@option]
  frontend_port_end : float prop option; [@option]
  frontend_port_start : float prop option; [@option]
  id : string prop option; [@option]
  idle_timeout_in_minutes : float prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_nat_rule) -> ()

let yojson_of_azurerm_lb_nat_rule =
  (function
   | {
       backend_address_pool_id = v_backend_address_pool_id;
       backend_port = v_backend_port;
       enable_floating_ip = v_enable_floating_ip;
       enable_tcp_reset = v_enable_tcp_reset;
       frontend_ip_configuration_name =
         v_frontend_ip_configuration_name;
       frontend_port = v_frontend_port;
       frontend_port_end = v_frontend_port_end;
       frontend_port_start = v_frontend_port_start;
       id = v_id;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       loadbalancer_id = v_loadbalancer_id;
       name = v_name;
       protocol = v_protocol;
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
         match v_frontend_port_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "frontend_port_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frontend_port_end with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "frontend_port_end", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frontend_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "frontend_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_frontend_ip_configuration_name
         in
         ("frontend_ip_configuration_name", arg) :: bnds
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
         match v_enable_floating_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_floating_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backend_port in
         ("backend_port", arg) :: bnds
       in
       let bnds =
         match v_backend_address_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_address_pool_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lb_nat_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_nat_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_nat_rule ?backend_address_pool_id ?enable_floating_ip
    ?enable_tcp_reset ?frontend_port ?frontend_port_end
    ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name () : azurerm_lb_nat_rule =
  {
    backend_address_pool_id;
    backend_port;
    enable_floating_ip;
    enable_tcp_reset;
    frontend_ip_configuration_name;
    frontend_port;
    frontend_port_end;
    frontend_port_start;
    id;
    idle_timeout_in_minutes;
    loadbalancer_id;
    name;
    protocol;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  backend_address_pool_id : string prop;
  backend_ip_configuration_id : string prop;
  backend_port : float prop;
  enable_floating_ip : bool prop;
  enable_tcp_reset : bool prop;
  frontend_ip_configuration_id : string prop;
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop;
  frontend_port_end : float prop;
  frontend_port_start : float prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
}

let make ?backend_address_pool_id ?enable_floating_ip
    ?enable_tcp_reset ?frontend_port ?frontend_port_end
    ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name __id =
  let __type = "azurerm_lb_nat_rule" in
  let __attrs =
    ({
       tf_name = __id;
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       backend_ip_configuration_id =
         Prop.computed __type __id "backend_ip_configuration_id";
       backend_port = Prop.computed __type __id "backend_port";
       enable_floating_ip =
         Prop.computed __type __id "enable_floating_ip";
       enable_tcp_reset =
         Prop.computed __type __id "enable_tcp_reset";
       frontend_ip_configuration_id =
         Prop.computed __type __id "frontend_ip_configuration_id";
       frontend_ip_configuration_name =
         Prop.computed __type __id "frontend_ip_configuration_name";
       frontend_port = Prop.computed __type __id "frontend_port";
       frontend_port_end =
         Prop.computed __type __id "frontend_port_end";
       frontend_port_start =
         Prop.computed __type __id "frontend_port_start";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       protocol = Prop.computed __type __id "protocol";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_nat_rule
        (azurerm_lb_nat_rule ?backend_address_pool_id
           ?enable_floating_ip ?enable_tcp_reset ?frontend_port
           ?frontend_port_end ?frontend_port_start ?id
           ?idle_timeout_in_minutes ?timeouts ~backend_port
           ~frontend_ip_configuration_name ~loadbalancer_id ~name
           ~protocol ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend_address_pool_id ?enable_floating_ip
    ?enable_tcp_reset ?frontend_port ?frontend_port_end
    ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?backend_address_pool_id ?enable_floating_ip
      ?enable_tcp_reset ?frontend_port ?frontend_port_end
      ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
      ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
      ~name ~protocol ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

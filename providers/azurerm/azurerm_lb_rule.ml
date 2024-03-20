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

type azurerm_lb_rule = {
  backend_address_pool_ids : string prop list option; [@option]
  backend_port : float prop;
  disable_outbound_snat : bool prop option; [@option]
  enable_floating_ip : bool prop option; [@option]
  enable_tcp_reset : bool prop option; [@option]
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop;
  id : string prop option; [@option]
  idle_timeout_in_minutes : float prop option; [@option]
  load_distribution : string prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  probe_id : string prop option; [@option]
  protocol : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_rule) -> ()

let yojson_of_azurerm_lb_rule =
  (function
   | {
       backend_address_pool_ids = v_backend_address_pool_ids;
       backend_port = v_backend_port;
       disable_outbound_snat = v_disable_outbound_snat;
       enable_floating_ip = v_enable_floating_ip;
       enable_tcp_reset = v_enable_tcp_reset;
       frontend_ip_configuration_name =
         v_frontend_ip_configuration_name;
       frontend_port = v_frontend_port;
       id = v_id;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       load_distribution = v_load_distribution;
       loadbalancer_id = v_loadbalancer_id;
       name = v_name;
       probe_id = v_probe_id;
       protocol = v_protocol;
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
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_probe_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "probe_id", arg in
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
         match v_load_distribution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_distribution", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_frontend_port in
         ("frontend_port", arg) :: bnds
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
         match v_disable_outbound_snat with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_outbound_snat", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backend_port in
         ("backend_port", arg) :: bnds
       in
       let bnds =
         match v_backend_address_pool_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backend_address_pool_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lb_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_rule ?backend_address_pool_ids ?disable_outbound_snat
    ?enable_floating_ip ?enable_tcp_reset ?id
    ?idle_timeout_in_minutes ?load_distribution ?probe_id ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port
    ~loadbalancer_id ~name ~protocol () : azurerm_lb_rule =
  {
    backend_address_pool_ids;
    backend_port;
    disable_outbound_snat;
    enable_floating_ip;
    enable_tcp_reset;
    frontend_ip_configuration_name;
    frontend_port;
    id;
    idle_timeout_in_minutes;
    load_distribution;
    loadbalancer_id;
    name;
    probe_id;
    protocol;
    timeouts;
  }

type t = {
  backend_address_pool_ids : string list prop;
  backend_port : float prop;
  disable_outbound_snat : bool prop;
  enable_floating_ip : bool prop;
  enable_tcp_reset : bool prop;
  frontend_ip_configuration_id : string prop;
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  load_distribution : string prop;
  loadbalancer_id : string prop;
  name : string prop;
  probe_id : string prop;
  protocol : string prop;
}

let make ?backend_address_pool_ids ?disable_outbound_snat
    ?enable_floating_ip ?enable_tcp_reset ?id
    ?idle_timeout_in_minutes ?load_distribution ?probe_id ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port
    ~loadbalancer_id ~name ~protocol __id =
  let __type = "azurerm_lb_rule" in
  let __attrs =
    ({
       backend_address_pool_ids =
         Prop.computed __type __id "backend_address_pool_ids";
       backend_port = Prop.computed __type __id "backend_port";
       disable_outbound_snat =
         Prop.computed __type __id "disable_outbound_snat";
       enable_floating_ip =
         Prop.computed __type __id "enable_floating_ip";
       enable_tcp_reset =
         Prop.computed __type __id "enable_tcp_reset";
       frontend_ip_configuration_id =
         Prop.computed __type __id "frontend_ip_configuration_id";
       frontend_ip_configuration_name =
         Prop.computed __type __id "frontend_ip_configuration_name";
       frontend_port = Prop.computed __type __id "frontend_port";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       load_distribution =
         Prop.computed __type __id "load_distribution";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       probe_id = Prop.computed __type __id "probe_id";
       protocol = Prop.computed __type __id "protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_rule
        (azurerm_lb_rule ?backend_address_pool_ids
           ?disable_outbound_snat ?enable_floating_ip
           ?enable_tcp_reset ?id ?idle_timeout_in_minutes
           ?load_distribution ?probe_id ?timeouts ~backend_port
           ~frontend_ip_configuration_name ~frontend_port
           ~loadbalancer_id ~name ~protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?backend_address_pool_ids
    ?disable_outbound_snat ?enable_floating_ip ?enable_tcp_reset ?id
    ?idle_timeout_in_minutes ?load_distribution ?probe_id ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port
    ~loadbalancer_id ~name ~protocol __id =
  let (r : _ Tf_core.resource) =
    make ?backend_address_pool_ids ?disable_outbound_snat
      ?enable_floating_ip ?enable_tcp_reset ?id
      ?idle_timeout_in_minutes ?load_distribution ?probe_id ?timeouts
      ~backend_port ~frontend_ip_configuration_name ~frontend_port
      ~loadbalancer_id ~name ~protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

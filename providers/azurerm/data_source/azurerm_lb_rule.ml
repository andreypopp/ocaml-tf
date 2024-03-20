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

type azurerm_lb_rule = {
  id : string prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_rule) -> ()

let yojson_of_azurerm_lb_rule =
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
    : azurerm_lb_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_lb_rule ?id ?timeouts ~loadbalancer_id ~name () :
    azurerm_lb_rule =
  { id; loadbalancer_id; name; timeouts }

type t = {
  backend_address_pool_id : string prop;
  backend_port : float prop;
  disable_outbound_snat : bool prop;
  enable_floating_ip : bool prop;
  enable_tcp_reset : bool prop;
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

let make ?id ?timeouts ~loadbalancer_id ~name __id =
  let __type = "azurerm_lb_rule" in
  let __attrs =
    ({
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       backend_port = Prop.computed __type __id "backend_port";
       disable_outbound_snat =
         Prop.computed __type __id "disable_outbound_snat";
       enable_floating_ip =
         Prop.computed __type __id "enable_floating_ip";
       enable_tcp_reset =
         Prop.computed __type __id "enable_tcp_reset";
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
        (azurerm_lb_rule ?id ?timeouts ~loadbalancer_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~loadbalancer_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~loadbalancer_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type frontend_ip_configuration = {
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_ip_configuration) -> ()

let yojson_of_frontend_ip_configuration =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : frontend_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_ip_configuration

[@@@deriving.end]

type azurerm_lb_outbound_rule = {
  id : string prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_outbound_rule) -> ()

let yojson_of_azurerm_lb_outbound_rule =
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
    : azurerm_lb_outbound_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_outbound_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_lb_outbound_rule ?id ?timeouts ~loadbalancer_id ~name ()
    : azurerm_lb_outbound_rule =
  { id; loadbalancer_id; name; timeouts }

type t = {
  tf_name : string;
  allocated_outbound_ports : float prop;
  backend_address_pool_id : string prop;
  frontend_ip_configuration : frontend_ip_configuration list prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  tcp_reset_enabled : bool prop;
}

let make ?id ?timeouts ~loadbalancer_id ~name __id =
  let __type = "azurerm_lb_outbound_rule" in
  let __attrs =
    ({
       tf_name = __id;
       allocated_outbound_ports =
         Prop.computed __type __id "allocated_outbound_ports";
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       frontend_ip_configuration =
         Prop.computed __type __id "frontend_ip_configuration";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       protocol = Prop.computed __type __id "protocol";
       tcp_reset_enabled =
         Prop.computed __type __id "tcp_reset_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_outbound_rule
        (azurerm_lb_outbound_rule ?id ?timeouts ~loadbalancer_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~loadbalancer_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~loadbalancer_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

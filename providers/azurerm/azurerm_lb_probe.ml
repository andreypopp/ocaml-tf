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

type azurerm_lb_probe = {
  id : string prop option; [@option]
  interval_in_seconds : float prop option; [@option]
  loadbalancer_id : string prop;
  name : string prop;
  number_of_probes : float prop option; [@option]
  port : float prop;
  probe_threshold : float prop option; [@option]
  protocol : string prop option; [@option]
  request_path : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb_probe) -> ()

let yojson_of_azurerm_lb_probe =
  (function
   | {
       id = v_id;
       interval_in_seconds = v_interval_in_seconds;
       loadbalancer_id = v_loadbalancer_id;
       name = v_name;
       number_of_probes = v_number_of_probes;
       port = v_port;
       probe_threshold = v_probe_threshold;
       protocol = v_protocol;
       request_path = v_request_path;
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
         match v_request_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_probe_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "probe_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_number_of_probes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_probes", arg in
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
         match v_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_seconds", arg in
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
       `Assoc bnds
    : azurerm_lb_probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb_probe

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_probe ?id ?interval_in_seconds ?number_of_probes
    ?probe_threshold ?protocol ?request_path ?timeouts
    ~loadbalancer_id ~name ~port () : azurerm_lb_probe =
  {
    id;
    interval_in_seconds;
    loadbalancer_id;
    name;
    number_of_probes;
    port;
    probe_threshold;
    protocol;
    request_path;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  interval_in_seconds : float prop;
  load_balancer_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  number_of_probes : float prop;
  port : float prop;
  probe_threshold : float prop;
  protocol : string prop;
  request_path : string prop;
}

let make ?id ?interval_in_seconds ?number_of_probes ?probe_threshold
    ?protocol ?request_path ?timeouts ~loadbalancer_id ~name ~port
    __id =
  let __type = "azurerm_lb_probe" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       interval_in_seconds =
         Prop.computed __type __id "interval_in_seconds";
       load_balancer_rules =
         Prop.computed __type __id "load_balancer_rules";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       number_of_probes =
         Prop.computed __type __id "number_of_probes";
       port = Prop.computed __type __id "port";
       probe_threshold = Prop.computed __type __id "probe_threshold";
       protocol = Prop.computed __type __id "protocol";
       request_path = Prop.computed __type __id "request_path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_probe
        (azurerm_lb_probe ?id ?interval_in_seconds ?number_of_probes
           ?probe_threshold ?protocol ?request_path ?timeouts
           ~loadbalancer_id ~name ~port ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?interval_in_seconds ?number_of_probes
    ?probe_threshold ?protocol ?request_path ?timeouts
    ~loadbalancer_id ~name ~port __id =
  let (r : _ Tf_core.resource) =
    make ?id ?interval_in_seconds ?number_of_probes ?probe_threshold
      ?protocol ?request_path ?timeouts ~loadbalancer_id ~name ~port
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

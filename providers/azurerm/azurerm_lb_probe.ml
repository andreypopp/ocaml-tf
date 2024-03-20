(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lb_probe = {
  id : string prop option; [@option]  (** id *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  number_of_probes : float prop option; [@option]
      (** number_of_probes *)
  port : float prop;  (** port *)
  probe_threshold : float prop option; [@option]
      (** probe_threshold *)
  protocol : string prop option; [@option]  (** protocol *)
  request_path : string prop option; [@option]  (** request_path *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_probe *)

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

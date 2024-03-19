(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?interval_in_seconds ?number_of_probes
    ?probe_threshold ?protocol ?request_path ?timeouts
    ~loadbalancer_id ~name ~port __resource_id =
  let __resource_type = "azurerm_lb_probe" in
  let __resource =
    azurerm_lb_probe ?id ?interval_in_seconds ?number_of_probes
      ?probe_threshold ?protocol ?request_path ?timeouts
      ~loadbalancer_id ~name ~port ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_probe __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       interval_in_seconds =
         Prop.computed __resource_type __resource_id
           "interval_in_seconds";
       load_balancer_rules =
         Prop.computed __resource_type __resource_id
           "load_balancer_rules";
       loadbalancer_id =
         Prop.computed __resource_type __resource_id
           "loadbalancer_id";
       name = Prop.computed __resource_type __resource_id "name";
       number_of_probes =
         Prop.computed __resource_type __resource_id
           "number_of_probes";
       port = Prop.computed __resource_type __resource_id "port";
       probe_threshold =
         Prop.computed __resource_type __resource_id
           "probe_threshold";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       request_path =
         Prop.computed __resource_type __resource_id "request_path";
     }
      : t)
  in
  __resource_attributes

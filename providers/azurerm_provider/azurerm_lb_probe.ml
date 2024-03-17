(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_probe__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_probe__timeouts *)

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
  timeouts : azurerm_lb_probe__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_probe *)

let azurerm_lb_probe ?id ?interval_in_seconds ?number_of_probes
    ?probe_threshold ?protocol ?request_path ?timeouts
    ~loadbalancer_id ~name ~port __resource_id =
  let __resource_type = "azurerm_lb_probe" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_probe __resource);
  ()

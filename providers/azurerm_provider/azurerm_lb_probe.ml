(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_probe__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_probe__timeouts *)

type azurerm_lb_probe = {
  id : string option; [@option]  (** id *)
  interval_in_seconds : float option; [@option]
      (** interval_in_seconds *)
  loadbalancer_id : string;  (** loadbalancer_id *)
  name : string;  (** name *)
  number_of_probes : float option; [@option]  (** number_of_probes *)
  port : float;  (** port *)
  probe_threshold : float option; [@option]  (** probe_threshold *)
  protocol : string option; [@option]  (** protocol *)
  request_path : string option; [@option]  (** request_path *)
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_nat_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_nat_pool__timeouts *)

type azurerm_lb_nat_pool = {
  backend_port : float;  (** backend_port *)
  floating_ip_enabled : bool option; [@option]
      (** floating_ip_enabled *)
  frontend_ip_configuration_name : string;
      (** frontend_ip_configuration_name *)
  frontend_port_end : float;  (** frontend_port_end *)
  frontend_port_start : float;  (** frontend_port_start *)
  id : string option; [@option]  (** id *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  loadbalancer_id : string;  (** loadbalancer_id *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  resource_group_name : string;  (** resource_group_name *)
  tcp_reset_enabled : bool option; [@option]
      (** tcp_reset_enabled *)
  timeouts : azurerm_lb_nat_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_nat_pool *)

let azurerm_lb_nat_pool ?floating_ip_enabled ?id
    ?idle_timeout_in_minutes ?tcp_reset_enabled ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port_end
    ~frontend_port_start ~loadbalancer_id ~name ~protocol
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_lb_nat_pool" in
  let __resource =
    {
      backend_port;
      floating_ip_enabled;
      frontend_ip_configuration_name;
      frontend_port_end;
      frontend_port_start;
      id;
      idle_timeout_in_minutes;
      loadbalancer_id;
      name;
      protocol;
      resource_group_name;
      tcp_reset_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_nat_pool __resource);
  ()

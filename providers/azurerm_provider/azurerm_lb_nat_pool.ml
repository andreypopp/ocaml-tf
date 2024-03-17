(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_nat_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_nat_pool__timeouts *)

type azurerm_lb_nat_pool = {
  backend_port : float prop;  (** backend_port *)
  floating_ip_enabled : bool prop option; [@option]
      (** floating_ip_enabled *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port_end : float prop;  (** frontend_port_end *)
  frontend_port_start : float prop;  (** frontend_port_start *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  resource_group_name : string prop;  (** resource_group_name *)
  tcp_reset_enabled : bool prop option; [@option]
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

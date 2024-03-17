(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_nat_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_nat_rule__timeouts *)

type azurerm_lb_nat_rule = {
  backend_address_pool_id : string option; [@option]
      (** backend_address_pool_id *)
  backend_port : float;  (** backend_port *)
  enable_tcp_reset : bool option; [@option]  (** enable_tcp_reset *)
  frontend_ip_configuration_name : string;
      (** frontend_ip_configuration_name *)
  frontend_port : float option; [@option]  (** frontend_port *)
  frontend_port_end : float option; [@option]
      (** frontend_port_end *)
  frontend_port_start : float option; [@option]
      (** frontend_port_start *)
  loadbalancer_id : string;  (** loadbalancer_id *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_lb_nat_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_nat_rule *)

let azurerm_lb_nat_rule ?backend_address_pool_id ?enable_tcp_reset
    ?frontend_port ?frontend_port_end ?frontend_port_start ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name __resource_id =
  let __resource_type = "azurerm_lb_nat_rule" in
  let __resource =
    {
      backend_address_pool_id;
      backend_port;
      enable_tcp_reset;
      frontend_ip_configuration_name;
      frontend_port;
      frontend_port_end;
      frontend_port_start;
      loadbalancer_id;
      name;
      protocol;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_nat_rule __resource);
  ()

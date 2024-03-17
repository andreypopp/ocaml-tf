(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_lb_backend_address_pool_address__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool_address__timeouts *)

type azurerm_lb_backend_address_pool_address__inbound_nat_rule_port_mapping = {
  backend_port : float;  (** backend_port *)
  frontend_port : float;  (** frontend_port *)
  inbound_nat_rule_name : string;  (** inbound_nat_rule_name *)
}
[@@deriving yojson_of]

type azurerm_lb_backend_address_pool_address = {
  backend_address_ip_configuration_id : string option; [@option]
      (** For global load balancer, user needs to specify the `backend_address_ip_configuration_id` of the added regional load balancers *)
  backend_address_pool_id : string;  (** backend_address_pool_id *)
  ip_address : string option; [@option]  (** ip_address *)
  name : string;  (** name *)
  virtual_network_id : string option; [@option]
      (** For regional load balancer, user needs to specify `virtual_network_id` and `ip_address` *)
  timeouts : azurerm_lb_backend_address_pool_address__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool_address *)

let azurerm_lb_backend_address_pool_address
    ?backend_address_ip_configuration_id ?ip_address
    ?virtual_network_id ?timeouts ~backend_address_pool_id ~name
    __resource_id =
  let __resource_type = "azurerm_lb_backend_address_pool_address" in
  let __resource =
    {
      backend_address_ip_configuration_id;
      backend_address_pool_id;
      ip_address;
      name;
      virtual_network_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_backend_address_pool_address __resource);
  ()

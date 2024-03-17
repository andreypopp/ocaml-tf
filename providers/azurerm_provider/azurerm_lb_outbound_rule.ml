(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_outbound_rule__frontend_ip_configuration = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_lb_outbound_rule__frontend_ip_configuration *)

type azurerm_lb_outbound_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_outbound_rule__timeouts *)

type azurerm_lb_outbound_rule = {
  allocated_outbound_ports : float option; [@option]
      (** allocated_outbound_ports *)
  backend_address_pool_id : string;  (** backend_address_pool_id *)
  enable_tcp_reset : bool option; [@option]  (** enable_tcp_reset *)
  id : string option; [@option]  (** id *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  loadbalancer_id : string;  (** loadbalancer_id *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  frontend_ip_configuration :
    azurerm_lb_outbound_rule__frontend_ip_configuration list;
  timeouts : azurerm_lb_outbound_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_outbound_rule *)

let azurerm_lb_outbound_rule ?allocated_outbound_ports
    ?enable_tcp_reset ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_address_pool_id ~loadbalancer_id ~name ~protocol
    ~frontend_ip_configuration __resource_id =
  let __resource_type = "azurerm_lb_outbound_rule" in
  let __resource =
    {
      allocated_outbound_ports;
      backend_address_pool_id;
      enable_tcp_reset;
      id;
      idle_timeout_in_minutes;
      loadbalancer_id;
      name;
      protocol;
      frontend_ip_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_outbound_rule __resource);
  ()

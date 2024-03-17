(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_outbound_rule__frontend_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_lb_outbound_rule__frontend_ip_configuration *)

type azurerm_lb_outbound_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_outbound_rule__timeouts *)

type azurerm_lb_outbound_rule = {
  allocated_outbound_ports : float prop option; [@option]
      (** allocated_outbound_ports *)
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  enable_tcp_reset : bool prop option; [@option]
      (** enable_tcp_reset *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
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

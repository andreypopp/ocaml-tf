(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_lb_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_rule__timeouts *)

type azurerm_lb_rule = {
  backend_address_pool_ids : string list option; [@option]
      (** backend_address_pool_ids *)
  backend_port : float;  (** backend_port *)
  disable_outbound_snat : bool option; [@option]
      (** disable_outbound_snat *)
  enable_floating_ip : bool option; [@option]
      (** enable_floating_ip *)
  enable_tcp_reset : bool option; [@option]  (** enable_tcp_reset *)
  frontend_ip_configuration_name : string;
      (** frontend_ip_configuration_name *)
  frontend_port : float;  (** frontend_port *)
  loadbalancer_id : string;  (** loadbalancer_id *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  timeouts : azurerm_lb_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_rule *)

let azurerm_lb_rule ?backend_address_pool_ids ?disable_outbound_snat
    ?enable_floating_ip ?enable_tcp_reset ?timeouts ~backend_port
    ~frontend_ip_configuration_name ~frontend_port ~loadbalancer_id
    ~name ~protocol __resource_id =
  let __resource_type = "azurerm_lb_rule" in
  let __resource =
    {
      backend_address_pool_ids;
      backend_port;
      disable_outbound_snat;
      enable_floating_ip;
      enable_tcp_reset;
      frontend_ip_configuration_name;
      frontend_port;
      loadbalancer_id;
      name;
      protocol;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_rule __resource);
  ()

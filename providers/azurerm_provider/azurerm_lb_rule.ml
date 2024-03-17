(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_rule__timeouts *)

type azurerm_lb_rule = {
  backend_address_pool_ids : string prop list option; [@option]
      (** backend_address_pool_ids *)
  backend_port : float prop;  (** backend_port *)
  disable_outbound_snat : bool prop option; [@option]
      (** disable_outbound_snat *)
  enable_floating_ip : bool prop option; [@option]
      (** enable_floating_ip *)
  enable_tcp_reset : bool prop option; [@option]
      (** enable_tcp_reset *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port : float prop;  (** frontend_port *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  load_distribution : string prop option; [@option]
      (** load_distribution *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  probe_id : string prop option; [@option]  (** probe_id *)
  protocol : string prop;  (** protocol *)
  timeouts : azurerm_lb_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_rule *)

let azurerm_lb_rule ?backend_address_pool_ids ?disable_outbound_snat
    ?enable_floating_ip ?enable_tcp_reset ?id
    ?idle_timeout_in_minutes ?load_distribution ?probe_id ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port
    ~loadbalancer_id ~name ~protocol __resource_id =
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
      id;
      idle_timeout_in_minutes;
      load_distribution;
      loadbalancer_id;
      name;
      probe_id;
      protocol;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_rule __resource);
  ()

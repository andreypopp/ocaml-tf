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

type t = {
  backend_address_pool_ids : string list prop;
  backend_port : float prop;
  disable_outbound_snat : bool prop;
  enable_floating_ip : bool prop;
  enable_tcp_reset : bool prop;
  frontend_ip_configuration_id : string prop;
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  load_distribution : string prop;
  loadbalancer_id : string prop;
  name : string prop;
  probe_id : string prop;
  protocol : string prop;
}

let azurerm_lb_rule ?backend_address_pool_ids ?disable_outbound_snat
    ?enable_floating_ip ?enable_tcp_reset ?id
    ?idle_timeout_in_minutes ?load_distribution ?probe_id ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port
    ~loadbalancer_id ~name ~protocol __resource_id =
  let __resource_type = "azurerm_lb_rule" in
  let __resource =
    ({
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
      : azurerm_lb_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_rule __resource);
  let __resource_attributes =
    ({
       backend_address_pool_ids =
         Prop.computed __resource_type __resource_id
           "backend_address_pool_ids";
       backend_port =
         Prop.computed __resource_type __resource_id "backend_port";
       disable_outbound_snat =
         Prop.computed __resource_type __resource_id
           "disable_outbound_snat";
       enable_floating_ip =
         Prop.computed __resource_type __resource_id
           "enable_floating_ip";
       enable_tcp_reset =
         Prop.computed __resource_type __resource_id
           "enable_tcp_reset";
       frontend_ip_configuration_id =
         Prop.computed __resource_type __resource_id
           "frontend_ip_configuration_id";
       frontend_ip_configuration_name =
         Prop.computed __resource_type __resource_id
           "frontend_ip_configuration_name";
       frontend_port =
         Prop.computed __resource_type __resource_id "frontend_port";
       id = Prop.computed __resource_type __resource_id "id";
       idle_timeout_in_minutes =
         Prop.computed __resource_type __resource_id
           "idle_timeout_in_minutes";
       load_distribution =
         Prop.computed __resource_type __resource_id
           "load_distribution";
       loadbalancer_id =
         Prop.computed __resource_type __resource_id
           "loadbalancer_id";
       name = Prop.computed __resource_type __resource_id "name";
       probe_id =
         Prop.computed __resource_type __resource_id "probe_id";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
     }
      : t)
  in
  __resource_attributes

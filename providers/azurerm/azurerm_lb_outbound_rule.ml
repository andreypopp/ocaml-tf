(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type frontend_ip_configuration = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** frontend_ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  frontend_ip_configuration : frontend_ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_outbound_rule *)

let frontend_ip_configuration ~name () : frontend_ip_configuration =
  { name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_outbound_rule ?allocated_outbound_ports
    ?enable_tcp_reset ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_address_pool_id ~loadbalancer_id ~name ~protocol
    ~frontend_ip_configuration () : azurerm_lb_outbound_rule =
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

type t = {
  allocated_outbound_ports : float prop;
  backend_address_pool_id : string prop;
  enable_tcp_reset : bool prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
}

let register ?tf_module ?allocated_outbound_ports ?enable_tcp_reset
    ?id ?idle_timeout_in_minutes ?timeouts ~backend_address_pool_id
    ~loadbalancer_id ~name ~protocol ~frontend_ip_configuration
    __resource_id =
  let __resource_type = "azurerm_lb_outbound_rule" in
  let __resource =
    azurerm_lb_outbound_rule ?allocated_outbound_ports
      ?enable_tcp_reset ?id ?idle_timeout_in_minutes ?timeouts
      ~backend_address_pool_id ~loadbalancer_id ~name ~protocol
      ~frontend_ip_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_outbound_rule __resource);
  let __resource_attributes =
    ({
       allocated_outbound_ports =
         Prop.computed __resource_type __resource_id
           "allocated_outbound_ports";
       backend_address_pool_id =
         Prop.computed __resource_type __resource_id
           "backend_address_pool_id";
       enable_tcp_reset =
         Prop.computed __resource_type __resource_id
           "enable_tcp_reset";
       id = Prop.computed __resource_type __resource_id "id";
       idle_timeout_in_minutes =
         Prop.computed __resource_type __resource_id
           "idle_timeout_in_minutes";
       loadbalancer_id =
         Prop.computed __resource_type __resource_id
           "loadbalancer_id";
       name = Prop.computed __resource_type __resource_id "name";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_backend_address_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool__timeouts *)

type azurerm_lb_backend_address_pool__tunnel_interface = {
  identifier : float prop;  (** identifier *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool__tunnel_interface *)

type azurerm_lb_backend_address_pool = {
  id : string prop option; [@option]  (** id *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  timeouts : azurerm_lb_backend_address_pool__timeouts option;
  tunnel_interface :
    azurerm_lb_backend_address_pool__tunnel_interface list;
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool *)

type t = {
  backend_ip_configurations : string list prop;
  id : string prop;
  inbound_nat_rules : string list prop;
  load_balancing_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  outbound_rules : string list prop;
  virtual_network_id : string prop;
}

let azurerm_lb_backend_address_pool ?id ?virtual_network_id ?timeouts
    ~loadbalancer_id ~name ~tunnel_interface __resource_id =
  let __resource_type = "azurerm_lb_backend_address_pool" in
  let __resource =
    ({
       id;
       loadbalancer_id;
       name;
       virtual_network_id;
       timeouts;
       tunnel_interface;
     }
      : azurerm_lb_backend_address_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_backend_address_pool __resource);
  let __resource_attributes =
    ({
       backend_ip_configurations =
         Prop.computed __resource_type __resource_id
           "backend_ip_configurations";
       id = Prop.computed __resource_type __resource_id "id";
       inbound_nat_rules =
         Prop.computed __resource_type __resource_id
           "inbound_nat_rules";
       load_balancing_rules =
         Prop.computed __resource_type __resource_id
           "load_balancing_rules";
       loadbalancer_id =
         Prop.computed __resource_type __resource_id
           "loadbalancer_id";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_rules =
         Prop.computed __resource_type __resource_id "outbound_rules";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
     }
      : t)
  in
  __resource_attributes

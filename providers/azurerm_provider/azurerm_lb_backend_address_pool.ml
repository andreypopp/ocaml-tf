(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb_backend_address_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool__timeouts *)

type azurerm_lb_backend_address_pool__tunnel_interface = {
  identifier : float;  (** identifier *)
  port : float;  (** port *)
  protocol : string;  (** protocol *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool__tunnel_interface *)

type azurerm_lb_backend_address_pool = {
  id : string option; [@option]  (** id *)
  loadbalancer_id : string;  (** loadbalancer_id *)
  name : string;  (** name *)
  virtual_network_id : string option; [@option]
      (** virtual_network_id *)
  timeouts : azurerm_lb_backend_address_pool__timeouts option;
  tunnel_interface :
    azurerm_lb_backend_address_pool__tunnel_interface list;
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool *)

let azurerm_lb_backend_address_pool ?id ?virtual_network_id ?timeouts
    ~loadbalancer_id ~name ~tunnel_interface __resource_id =
  let __resource_type = "azurerm_lb_backend_address_pool" in
  let __resource =
    {
      id;
      loadbalancer_id;
      name;
      virtual_network_id;
      timeouts;
      tunnel_interface;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb_backend_address_pool __resource);
  ()

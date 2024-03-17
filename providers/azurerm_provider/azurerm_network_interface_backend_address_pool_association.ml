(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface_backend_address_pool_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_interface_backend_address_pool_association__timeouts *)

type azurerm_network_interface_backend_address_pool_association = {
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  id : string prop option; [@option]  (** id *)
  ip_configuration_name : string prop;  (** ip_configuration_name *)
  network_interface_id : string prop;  (** network_interface_id *)
  timeouts :
    azurerm_network_interface_backend_address_pool_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_backend_address_pool_association *)

let azurerm_network_interface_backend_address_pool_association ?id
    ?timeouts ~backend_address_pool_id ~ip_configuration_name
    ~network_interface_id __resource_id =
  let __resource_type =
    "azurerm_network_interface_backend_address_pool_association"
  in
  let __resource =
    {
      backend_address_pool_id;
      id;
      ip_configuration_name;
      network_interface_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_backend_address_pool_association
       __resource);
  ()

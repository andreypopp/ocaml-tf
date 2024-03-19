(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_interface_application_gateway_backend_address_pool_association = {
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  id : string prop option; [@option]  (** id *)
  ip_configuration_name : string prop;  (** ip_configuration_name *)
  network_interface_id : string prop;  (** network_interface_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_application_gateway_backend_address_pool_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_interface_application_gateway_backend_address_pool_association
    ?id ?timeouts ~backend_address_pool_id ~ip_configuration_name
    ~network_interface_id () :
    azurerm_network_interface_application_gateway_backend_address_pool_association
    =
  {
    backend_address_pool_id;
    id;
    ip_configuration_name;
    network_interface_id;
    timeouts;
  }

type t = {
  backend_address_pool_id : string prop;
  id : string prop;
  ip_configuration_name : string prop;
  network_interface_id : string prop;
}

let register ?tf_module ?id ?timeouts ~backend_address_pool_id
    ~ip_configuration_name ~network_interface_id __resource_id =
  let __resource_type =
    "azurerm_network_interface_application_gateway_backend_address_pool_association"
  in
  let __resource =
    azurerm_network_interface_application_gateway_backend_address_pool_association
      ?id ?timeouts ~backend_address_pool_id ~ip_configuration_name
      ~network_interface_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_application_gateway_backend_address_pool_association
       __resource);
  let __resource_attributes =
    ({
       backend_address_pool_id =
         Prop.computed __resource_type __resource_id
           "backend_address_pool_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_configuration_name =
         Prop.computed __resource_type __resource_id
           "ip_configuration_name";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
     }
      : t)
  in
  __resource_attributes

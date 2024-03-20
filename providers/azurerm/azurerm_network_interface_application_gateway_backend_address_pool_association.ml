(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~backend_address_pool_id
    ~ip_configuration_name ~network_interface_id __id =
  let __type =
    "azurerm_network_interface_application_gateway_backend_address_pool_association"
  in
  let __attrs =
    ({
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       id = Prop.computed __type __id "id";
       ip_configuration_name =
         Prop.computed __type __id "ip_configuration_name";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_interface_application_gateway_backend_address_pool_association
        (azurerm_network_interface_application_gateway_backend_address_pool_association
           ?id ?timeouts ~backend_address_pool_id
           ~ip_configuration_name ~network_interface_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backend_address_pool_id
    ~ip_configuration_name ~network_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backend_address_pool_id
      ~ip_configuration_name ~network_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

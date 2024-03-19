(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_postgresql_virtual_network_rule = {
  id : string prop option; [@option]  (** id *)
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_virtual_network_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_virtual_network_rule ?id
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name
    ~resource_group_name ~server_name ~subnet_id () :
    azurerm_postgresql_virtual_network_rule =
  {
    id;
    ignore_missing_vnet_service_endpoint;
    name;
    resource_group_name;
    server_name;
    subnet_id;
    timeouts;
  }

type t = {
  id : string prop;
  ignore_missing_vnet_service_endpoint : bool prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  subnet_id : string prop;
}

let register ?tf_module ?id ?ignore_missing_vnet_service_endpoint
    ?timeouts ~name ~resource_group_name ~server_name ~subnet_id
    __resource_id =
  let __resource_type = "azurerm_postgresql_virtual_network_rule" in
  let __resource =
    azurerm_postgresql_virtual_network_rule ?id
      ?ignore_missing_vnet_service_endpoint ?timeouts ~name
      ~resource_group_name ~server_name ~subnet_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_virtual_network_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ignore_missing_vnet_service_endpoint =
         Prop.computed __resource_type __resource_id
           "ignore_missing_vnet_service_endpoint";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes

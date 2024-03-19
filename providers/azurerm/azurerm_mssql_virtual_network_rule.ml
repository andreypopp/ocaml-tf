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

type azurerm_mssql_virtual_network_rule = {
  id : string prop option; [@option]  (** id *)
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_network_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_virtual_network_rule ?id
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name ~server_id
    ~subnet_id () : azurerm_mssql_virtual_network_rule =
  {
    id;
    ignore_missing_vnet_service_endpoint;
    name;
    server_id;
    subnet_id;
    timeouts;
  }

type t = {
  id : string prop;
  ignore_missing_vnet_service_endpoint : bool prop;
  name : string prop;
  server_id : string prop;
  subnet_id : string prop;
}

let register ?tf_module ?id ?ignore_missing_vnet_service_endpoint
    ?timeouts ~name ~server_id ~subnet_id __resource_id =
  let __resource_type = "azurerm_mssql_virtual_network_rule" in
  let __resource =
    azurerm_mssql_virtual_network_rule ?id
      ?ignore_missing_vnet_service_endpoint ?timeouts ~name
      ~server_id ~subnet_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_virtual_network_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ignore_missing_vnet_service_endpoint =
         Prop.computed __resource_type __resource_id
           "ignore_missing_vnet_service_endpoint";
       name = Prop.computed __resource_type __resource_id "name";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes

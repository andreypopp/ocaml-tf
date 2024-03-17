(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_virtual_network_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_network_rule__timeouts *)

type azurerm_mssql_virtual_network_rule = {
  id : string prop option; [@option]  (** id *)
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : azurerm_mssql_virtual_network_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_network_rule *)

let azurerm_mssql_virtual_network_rule ?id
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name ~server_id
    ~subnet_id __resource_id =
  let __resource_type = "azurerm_mssql_virtual_network_rule" in
  let __resource =
    {
      id;
      ignore_missing_vnet_service_endpoint;
      name;
      server_id;
      subnet_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_virtual_network_rule __resource);
  ()

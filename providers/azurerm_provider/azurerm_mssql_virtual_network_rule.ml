(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_virtual_network_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_network_rule__timeouts *)

type azurerm_mssql_virtual_network_rule = {
  ignore_missing_vnet_service_endpoint : bool option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  name : string;  (** name *)
  server_id : string;  (** server_id *)
  subnet_id : string;  (** subnet_id *)
  timeouts : azurerm_mssql_virtual_network_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_network_rule *)

let azurerm_mssql_virtual_network_rule
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name ~server_id
    ~subnet_id __resource_id =
  let __resource_type = "azurerm_mssql_virtual_network_rule" in
  let __resource =
    {
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

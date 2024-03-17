(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_virtual_network_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_virtual_network_rule__timeouts *)

type azurerm_postgresql_virtual_network_rule = {
  id : string option; [@option]  (** id *)
  ignore_missing_vnet_service_endpoint : bool option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  subnet_id : string;  (** subnet_id *)
  timeouts : azurerm_postgresql_virtual_network_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_virtual_network_rule *)

let azurerm_postgresql_virtual_network_rule ?id
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name
    ~resource_group_name ~server_name ~subnet_id __resource_id =
  let __resource_type = "azurerm_postgresql_virtual_network_rule" in
  let __resource =
    {
      id;
      ignore_missing_vnet_service_endpoint;
      name;
      resource_group_name;
      server_name;
      subnet_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_virtual_network_rule __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_integration_service_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_integration_service_environment__timeouts *)

type azurerm_integration_service_environment = {
  access_endpoint_type : string;  (** access_endpoint_type *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string option; [@option]  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_network_subnet_ids : string list;
      (** virtual_network_subnet_ids *)
  timeouts : azurerm_integration_service_environment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_integration_service_environment *)

let azurerm_integration_service_environment ?sku_name ?tags ?timeouts
    ~access_endpoint_type ~location ~name ~resource_group_name
    ~virtual_network_subnet_ids __resource_id =
  let __resource_type = "azurerm_integration_service_environment" in
  let __resource =
    {
      access_endpoint_type;
      location;
      name;
      resource_group_name;
      sku_name;
      tags;
      virtual_network_subnet_ids;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_integration_service_environment __resource);
  ()

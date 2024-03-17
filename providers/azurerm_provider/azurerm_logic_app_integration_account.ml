(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account__timeouts *)

type azurerm_logic_app_integration_account = {
  id : string prop option; [@option]  (** id *)
  integration_service_environment_id : string prop option; [@option]
      (** integration_service_environment_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_logic_app_integration_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account *)

let azurerm_logic_app_integration_account ?id
    ?integration_service_environment_id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_logic_app_integration_account" in
  let __resource =
    {
      id;
      integration_service_environment_id;
      location;
      name;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account __resource);
  ()

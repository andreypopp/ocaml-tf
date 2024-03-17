(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection_classic_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_classic_certificate__timeouts *)

type azurerm_automation_connection_classic_certificate = {
  automation_account_name : string prop;
      (** automation_account_name *)
  certificate_asset_name : string prop;
      (** certificate_asset_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
  subscription_name : string prop;  (** subscription_name *)
  timeouts :
    azurerm_automation_connection_classic_certificate__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_classic_certificate *)

let azurerm_automation_connection_classic_certificate ?description
    ?id ?timeouts ~automation_account_name ~certificate_asset_name
    ~name ~resource_group_name ~subscription_id ~subscription_name
    __resource_id =
  let __resource_type =
    "azurerm_automation_connection_classic_certificate"
  in
  let __resource =
    {
      automation_account_name;
      certificate_asset_name;
      description;
      id;
      name;
      resource_group_name;
      subscription_id;
      subscription_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection_classic_certificate
       __resource);
  ()

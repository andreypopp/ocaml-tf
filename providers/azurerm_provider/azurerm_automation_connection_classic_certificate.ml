(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection_classic_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_classic_certificate__timeouts *)

type azurerm_automation_connection_classic_certificate = {
  automation_account_name : string;  (** automation_account_name *)
  certificate_asset_name : string;  (** certificate_asset_name *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  subscription_id : string;  (** subscription_id *)
  subscription_name : string;  (** subscription_name *)
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

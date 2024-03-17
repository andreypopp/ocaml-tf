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

type t = {
  automation_account_name : string prop;
  certificate_asset_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
  subscription_name : string prop;
}

let azurerm_automation_connection_classic_certificate ?description
    ?id ?timeouts ~automation_account_name ~certificate_asset_name
    ~name ~resource_group_name ~subscription_id ~subscription_name
    __resource_id =
  let __resource_type =
    "azurerm_automation_connection_classic_certificate"
  in
  let __resource =
    ({
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
      : azurerm_automation_connection_classic_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection_classic_certificate
       __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       certificate_asset_name =
         Prop.computed __resource_type __resource_id
           "certificate_asset_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
       subscription_name =
         Prop.computed __resource_type __resource_id
           "subscription_name";
     }
      : t)
  in
  __resource_attributes

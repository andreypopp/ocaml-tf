(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_partner__business_identity = {
  qualifier : string prop;  (** qualifier *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_partner__business_identity *)

type azurerm_logic_app_integration_account_partner__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_partner__timeouts *)

type azurerm_logic_app_integration_account_partner = {
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  business_identity :
    azurerm_logic_app_integration_account_partner__business_identity
    list;
  timeouts :
    azurerm_logic_app_integration_account_partner__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_partner *)

type t = {
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_logic_app_integration_account_partner ?id ?metadata
    ?timeouts ~integration_account_name ~name ~resource_group_name
    ~business_identity __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_partner"
  in
  let __resource =
    ({
       id;
       integration_account_name;
       metadata;
       name;
       resource_group_name;
       business_identity;
       timeouts;
     }
      : azurerm_logic_app_integration_account_partner)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_partner
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       integration_account_name =
         Prop.computed __resource_type __resource_id
           "integration_account_name";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes

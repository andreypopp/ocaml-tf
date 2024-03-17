(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_integration_account_partner__business_identity = {
  qualifier : string;  (** qualifier *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_partner__business_identity *)

type azurerm_logic_app_integration_account_partner__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_partner__timeouts *)

type azurerm_logic_app_integration_account_partner = {
  integration_account_name : string;  (** integration_account_name *)
  metadata : string option; [@option]  (** metadata *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  business_identity :
    azurerm_logic_app_integration_account_partner__business_identity
    list;
  timeouts :
    azurerm_logic_app_integration_account_partner__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_partner *)

let azurerm_logic_app_integration_account_partner ?metadata ?timeouts
    ~integration_account_name ~name ~resource_group_name
    ~business_identity __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_partner"
  in
  let __resource =
    {
      integration_account_name;
      metadata;
      name;
      resource_group_name;
      business_identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_partner
       __resource);
  ()

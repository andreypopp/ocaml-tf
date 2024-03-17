(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_agreement__guest_identity = {
  qualifier : string;  (** qualifier *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_agreement__guest_identity *)

type azurerm_logic_app_integration_account_agreement__host_identity = {
  qualifier : string;  (** qualifier *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_agreement__host_identity *)

type azurerm_logic_app_integration_account_agreement__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_agreement__timeouts *)

type azurerm_logic_app_integration_account_agreement = {
  agreement_type : string;  (** agreement_type *)
  content : string;  (** content *)
  guest_partner_name : string;  (** guest_partner_name *)
  host_partner_name : string;  (** host_partner_name *)
  id : string option; [@option]  (** id *)
  integration_account_name : string;  (** integration_account_name *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  guest_identity :
    azurerm_logic_app_integration_account_agreement__guest_identity
    list;
  host_identity :
    azurerm_logic_app_integration_account_agreement__host_identity
    list;
  timeouts :
    azurerm_logic_app_integration_account_agreement__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_agreement *)

let azurerm_logic_app_integration_account_agreement ?id ?metadata
    ?timeouts ~agreement_type ~content ~guest_partner_name
    ~host_partner_name ~integration_account_name ~name
    ~resource_group_name ~guest_identity ~host_identity __resource_id
    =
  let __resource_type =
    "azurerm_logic_app_integration_account_agreement"
  in
  let __resource =
    {
      agreement_type;
      content;
      guest_partner_name;
      host_partner_name;
      id;
      integration_account_name;
      metadata;
      name;
      resource_group_name;
      guest_identity;
      host_identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_agreement
       __resource);
  ()

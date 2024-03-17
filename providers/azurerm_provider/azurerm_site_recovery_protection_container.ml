(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_protection_container__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container__timeouts *)

type azurerm_site_recovery_protection_container = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  recovery_fabric_name : string;  (** recovery_fabric_name *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_site_recovery_protection_container__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container *)

let azurerm_site_recovery_protection_container ?id ?timeouts ~name
    ~recovery_fabric_name ~recovery_vault_name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_site_recovery_protection_container"
  in
  let __resource =
    {
      id;
      name;
      recovery_fabric_name;
      recovery_vault_name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_protection_container __resource);
  ()

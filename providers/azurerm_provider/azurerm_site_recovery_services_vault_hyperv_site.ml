(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_services_vault_hyperv_site__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_services_vault_hyperv_site__timeouts *)

type azurerm_site_recovery_services_vault_hyperv_site = {
  name : string;  (** name *)
  recovery_vault_id : string;  (** recovery_vault_id *)
  timeouts :
    azurerm_site_recovery_services_vault_hyperv_site__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_services_vault_hyperv_site *)

let azurerm_site_recovery_services_vault_hyperv_site ?timeouts ~name
    ~recovery_vault_id __resource_id =
  let __resource_type =
    "azurerm_site_recovery_services_vault_hyperv_site"
  in
  let __resource = { name; recovery_vault_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_services_vault_hyperv_site
       __resource);
  ()

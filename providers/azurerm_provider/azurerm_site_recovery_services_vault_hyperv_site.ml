(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_services_vault_hyperv_site__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_services_vault_hyperv_site__timeouts *)

type azurerm_site_recovery_services_vault_hyperv_site = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  timeouts :
    azurerm_site_recovery_services_vault_hyperv_site__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_services_vault_hyperv_site *)

let azurerm_site_recovery_services_vault_hyperv_site ?id ?timeouts
    ~name ~recovery_vault_id __resource_id =
  let __resource_type =
    "azurerm_site_recovery_services_vault_hyperv_site"
  in
  let __resource = { id; name; recovery_vault_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_services_vault_hyperv_site
       __resource);
  ()

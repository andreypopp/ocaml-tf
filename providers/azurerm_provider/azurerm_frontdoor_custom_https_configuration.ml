(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_frontdoor_custom_https_configuration__custom_https_configuration = {
  azure_key_vault_certificate_secret_name : string option; [@option]
      (** azure_key_vault_certificate_secret_name *)
  azure_key_vault_certificate_secret_version : string option;
      [@option]
      (** azure_key_vault_certificate_secret_version *)
  azure_key_vault_certificate_vault_id : string option; [@option]
      (** azure_key_vault_certificate_vault_id *)
  certificate_source : string option; [@option]
      (** certificate_source *)
  minimum_tls_version : string;  (** minimum_tls_version *)
  provisioning_state : string;  (** provisioning_state *)
  provisioning_substate : string;  (** provisioning_substate *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration__custom_https_configuration *)

type azurerm_frontdoor_custom_https_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration__timeouts *)

type azurerm_frontdoor_custom_https_configuration = {
  custom_https_provisioning_enabled : bool;
      (** custom_https_provisioning_enabled *)
  frontend_endpoint_id : string;  (** frontend_endpoint_id *)
  custom_https_configuration :
    azurerm_frontdoor_custom_https_configuration__custom_https_configuration
    list;
  timeouts :
    azurerm_frontdoor_custom_https_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration *)

let azurerm_frontdoor_custom_https_configuration ?timeouts
    ~custom_https_provisioning_enabled ~frontend_endpoint_id
    ~custom_https_configuration __resource_id =
  let __resource_type =
    "azurerm_frontdoor_custom_https_configuration"
  in
  let __resource =
    {
      custom_https_provisioning_enabled;
      frontend_endpoint_id;
      custom_https_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor_custom_https_configuration
       __resource);
  ()
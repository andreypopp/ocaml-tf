(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_frontdoor_custom_https_configuration__custom_https_configuration = {
  azure_key_vault_certificate_secret_name : string prop option;
      [@option]
      (** azure_key_vault_certificate_secret_name *)
  azure_key_vault_certificate_secret_version : string prop option;
      [@option]
      (** azure_key_vault_certificate_secret_version *)
  azure_key_vault_certificate_vault_id : string prop option;
      [@option]
      (** azure_key_vault_certificate_vault_id *)
  certificate_source : string prop option; [@option]
      (** certificate_source *)
  minimum_tls_version : string prop;  (** minimum_tls_version *)
  provisioning_state : string prop;  (** provisioning_state *)
  provisioning_substate : string prop;  (** provisioning_substate *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration__custom_https_configuration *)

type azurerm_frontdoor_custom_https_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration__timeouts *)

type azurerm_frontdoor_custom_https_configuration = {
  custom_https_provisioning_enabled : bool prop;
      (** custom_https_provisioning_enabled *)
  frontend_endpoint_id : string prop;  (** frontend_endpoint_id *)
  id : string prop option; [@option]  (** id *)
  custom_https_configuration :
    azurerm_frontdoor_custom_https_configuration__custom_https_configuration
    list;
  timeouts :
    azurerm_frontdoor_custom_https_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration *)

let azurerm_frontdoor_custom_https_configuration ?id ?timeouts
    ~custom_https_provisioning_enabled ~frontend_endpoint_id
    ~custom_https_configuration __resource_id =
  let __resource_type =
    "azurerm_frontdoor_custom_https_configuration"
  in
  let __resource =
    {
      custom_https_provisioning_enabled;
      frontend_endpoint_id;
      id;
      custom_https_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor_custom_https_configuration
       __resource);
  ()

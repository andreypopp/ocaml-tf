(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_custom_domain__developer_portal = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain__developer_portal *)

type azurerm_api_management_custom_domain__gateway = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  default_ssl_binding : bool option; [@option]
      (** default_ssl_binding *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain__gateway *)

type azurerm_api_management_custom_domain__management = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain__management *)

type azurerm_api_management_custom_domain__portal = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain__portal *)

type azurerm_api_management_custom_domain__scm = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain__scm *)

type azurerm_api_management_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain__timeouts *)

type azurerm_api_management_custom_domain = {
  api_management_id : string;  (** api_management_id *)
  developer_portal :
    azurerm_api_management_custom_domain__developer_portal list;
  gateway : azurerm_api_management_custom_domain__gateway list;
  management : azurerm_api_management_custom_domain__management list;
  portal : azurerm_api_management_custom_domain__portal list;
  scm : azurerm_api_management_custom_domain__scm list;
  timeouts : azurerm_api_management_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain *)

let azurerm_api_management_custom_domain ?timeouts ~api_management_id
    ~developer_portal ~gateway ~management ~portal ~scm __resource_id
    =
  let __resource_type = "azurerm_api_management_custom_domain" in
  let __resource =
    {
      api_management_id;
      developer_portal;
      gateway;
      management;
      portal;
      scm;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_custom_domain __resource);
  ()

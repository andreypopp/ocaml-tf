(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_identity_provider_aad__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aad__timeouts *)

type azurerm_api_management_identity_provider_aad = {
  allowed_tenants : string list;  (** allowed_tenants *)
  api_management_name : string;  (** api_management_name *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  resource_group_name : string;  (** resource_group_name *)
  signin_tenant : string option; [@option]  (** signin_tenant *)
  timeouts :
    azurerm_api_management_identity_provider_aad__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aad *)

let azurerm_api_management_identity_provider_aad ?signin_tenant
    ?timeouts ~allowed_tenants ~api_management_name ~client_id
    ~client_secret ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_aad"
  in
  let __resource =
    {
      allowed_tenants;
      api_management_name;
      client_id;
      client_secret;
      resource_group_name;
      signin_tenant;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_aad
       __resource);
  ()

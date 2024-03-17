(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_identity_provider_facebook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_facebook__timeouts *)

type azurerm_api_management_identity_provider_facebook = {
  api_management_name : string;  (** api_management_name *)
  app_id : string;  (** app_id *)
  app_secret : string;  (** app_secret *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_api_management_identity_provider_facebook__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_facebook *)

let azurerm_api_management_identity_provider_facebook ?timeouts
    ~api_management_name ~app_id ~app_secret ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_facebook"
  in
  let __resource =
    {
      api_management_name;
      app_id;
      app_secret;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_facebook
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_identity_provider_facebook__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_facebook__timeouts *)

type azurerm_api_management_identity_provider_facebook = {
  api_management_name : string prop;  (** api_management_name *)
  app_id : string prop;  (** app_id *)
  app_secret : string prop;  (** app_secret *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_api_management_identity_provider_facebook__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_facebook *)

let azurerm_api_management_identity_provider_facebook ?id ?timeouts
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
      id;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_facebook
       __resource);
  ()

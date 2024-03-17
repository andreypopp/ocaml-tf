(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_identity_provider_microsoft__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_microsoft__timeouts *)

type azurerm_api_management_identity_provider_microsoft = {
  api_management_name : string prop;  (** api_management_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_api_management_identity_provider_microsoft__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_microsoft *)

let azurerm_api_management_identity_provider_microsoft ?id ?timeouts
    ~api_management_name ~client_id ~client_secret
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_microsoft"
  in
  let __resource =
    {
      api_management_name;
      client_id;
      client_secret;
      id;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_microsoft
       __resource);
  ()

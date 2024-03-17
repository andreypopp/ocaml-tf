(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_openid_connect_provider__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_openid_connect_provider__timeouts *)

type azurerm_api_management_openid_connect_provider = {
  api_management_name : string;  (** api_management_name *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  id : string option; [@option]  (** id *)
  metadata_endpoint : string;  (** metadata_endpoint *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_api_management_openid_connect_provider__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_openid_connect_provider *)

let azurerm_api_management_openid_connect_provider ?description ?id
    ?timeouts ~api_management_name ~client_id ~client_secret
    ~display_name ~metadata_endpoint ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_api_management_openid_connect_provider"
  in
  let __resource =
    {
      api_management_name;
      client_id;
      client_secret;
      description;
      display_name;
      id;
      metadata_endpoint;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_openid_connect_provider
       __resource);
  ()

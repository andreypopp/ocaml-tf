(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_openid_connect_provider__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_openid_connect_provider__timeouts *)

type azurerm_api_management_openid_connect_provider = {
  api_management_name : string prop;  (** api_management_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  metadata_endpoint : string prop;  (** metadata_endpoint *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
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

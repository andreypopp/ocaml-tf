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

type t = {
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  metadata_endpoint : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_api_management_openid_connect_provider ?description ?id
    ?timeouts ~api_management_name ~client_id ~client_secret
    ~display_name ~metadata_endpoint ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_api_management_openid_connect_provider"
  in
  let __resource =
    ({
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
      : azurerm_api_management_openid_connect_provider)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_openid_connect_provider
       __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       metadata_endpoint =
         Prop.computed __resource_type __resource_id
           "metadata_endpoint";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes

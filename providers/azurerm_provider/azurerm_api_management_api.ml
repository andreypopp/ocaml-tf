(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api__contact = {
  email : string option; [@option]  (** email *)
  name : string option; [@option]  (** name *)
  url : string option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__contact *)

type azurerm_api_management_api__import__wsdl_selector = {
  endpoint_name : string;  (** endpoint_name *)
  service_name : string;  (** service_name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__import__wsdl_selector *)

type azurerm_api_management_api__import = {
  content_format : string;  (** content_format *)
  content_value : string;  (** content_value *)
  wsdl_selector :
    azurerm_api_management_api__import__wsdl_selector list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api__import *)

type azurerm_api_management_api__license = {
  name : string option; [@option]  (** name *)
  url : string option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__license *)

type azurerm_api_management_api__oauth2_authorization = {
  authorization_server_name : string;
      (** authorization_server_name *)
  scope : string option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__oauth2_authorization *)

type azurerm_api_management_api__openid_authentication = {
  bearer_token_sending_methods : string list option; [@option]
      (** bearer_token_sending_methods *)
  openid_provider_name : string;  (** openid_provider_name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__openid_authentication *)

type azurerm_api_management_api__subscription_key_parameter_names = {
  header : string;  (** header *)
  query : string;  (** query *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__subscription_key_parameter_names *)

type azurerm_api_management_api__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__timeouts *)

type azurerm_api_management_api = {
  api_management_name : string;  (** api_management_name *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  revision : string;  (** revision *)
  revision_description : string option; [@option]
      (** revision_description *)
  source_api_id : string option; [@option]  (** source_api_id *)
  subscription_required : bool option; [@option]
      (** subscription_required *)
  terms_of_service_url : string option; [@option]
      (** terms_of_service_url *)
  version_description : string option; [@option]
      (** version_description *)
  contact : azurerm_api_management_api__contact list;
  import : azurerm_api_management_api__import list;
  license : azurerm_api_management_api__license list;
  oauth2_authorization :
    azurerm_api_management_api__oauth2_authorization list;
  openid_authentication :
    azurerm_api_management_api__openid_authentication list;
  subscription_key_parameter_names :
    azurerm_api_management_api__subscription_key_parameter_names list;
  timeouts : azurerm_api_management_api__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api *)

let azurerm_api_management_api ?description ?revision_description
    ?source_api_id ?subscription_required ?terms_of_service_url
    ?version_description ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision ~contact ~import ~license
    ~oauth2_authorization ~openid_authentication
    ~subscription_key_parameter_names __resource_id =
  let __resource_type = "azurerm_api_management_api" in
  let __resource =
    {
      api_management_name;
      description;
      name;
      resource_group_name;
      revision;
      revision_description;
      source_api_id;
      subscription_required;
      terms_of_service_url;
      version_description;
      contact;
      import;
      license;
      oauth2_authorization;
      openid_authentication;
      subscription_key_parameter_names;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api__contact = {
  email : string prop option; [@option]  (** email *)
  name : string prop option; [@option]  (** name *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__contact *)

type azurerm_api_management_api__import__wsdl_selector = {
  endpoint_name : string prop;  (** endpoint_name *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__import__wsdl_selector *)

type azurerm_api_management_api__import = {
  content_format : string prop;  (** content_format *)
  content_value : string prop;  (** content_value *)
  wsdl_selector :
    azurerm_api_management_api__import__wsdl_selector list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api__import *)

type azurerm_api_management_api__license = {
  name : string prop option; [@option]  (** name *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__license *)

type azurerm_api_management_api__oauth2_authorization = {
  authorization_server_name : string prop;
      (** authorization_server_name *)
  scope : string prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__oauth2_authorization *)

type azurerm_api_management_api__openid_authentication = {
  bearer_token_sending_methods : string prop list option; [@option]
      (** bearer_token_sending_methods *)
  openid_provider_name : string prop;  (** openid_provider_name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__openid_authentication *)

type azurerm_api_management_api__subscription_key_parameter_names = {
  header : string prop;  (** header *)
  query : string prop;  (** query *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__subscription_key_parameter_names *)

type azurerm_api_management_api__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api__timeouts *)

type azurerm_api_management_api = {
  api_management_name : string prop;  (** api_management_name *)
  api_type : string prop option; [@option]  (** api_type *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  protocols : string prop list option; [@option]  (** protocols *)
  resource_group_name : string prop;  (** resource_group_name *)
  revision : string prop;  (** revision *)
  revision_description : string prop option; [@option]
      (** revision_description *)
  service_url : string prop option; [@option]  (** service_url *)
  soap_pass_through : bool prop option; [@option]
      (** soap_pass_through *)
  source_api_id : string prop option; [@option]  (** source_api_id *)
  subscription_required : bool prop option; [@option]
      (** subscription_required *)
  terms_of_service_url : string prop option; [@option]
      (** terms_of_service_url *)
  version : string prop option; [@option]  (** version *)
  version_description : string prop option; [@option]
      (** version_description *)
  version_set_id : string prop option; [@option]
      (** version_set_id *)
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

let azurerm_api_management_api ?api_type ?description ?display_name
    ?id ?path ?protocols ?revision_description ?service_url
    ?soap_pass_through ?source_api_id ?subscription_required
    ?terms_of_service_url ?version ?version_description
    ?version_set_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision ~contact ~import ~license
    ~oauth2_authorization ~openid_authentication
    ~subscription_key_parameter_names __resource_id =
  let __resource_type = "azurerm_api_management_api" in
  let __resource =
    {
      api_management_name;
      api_type;
      description;
      display_name;
      id;
      name;
      path;
      protocols;
      resource_group_name;
      revision;
      revision_description;
      service_url;
      soap_pass_through;
      source_api_id;
      subscription_required;
      terms_of_service_url;
      version;
      version_description;
      version_set_id;
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

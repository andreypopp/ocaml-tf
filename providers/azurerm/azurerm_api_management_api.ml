(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type contact = {
  email : string prop option; [@option]  (** email *)
  name : string prop option; [@option]  (** name *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** contact *)

type import__wsdl_selector = {
  endpoint_name : string prop;  (** endpoint_name *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** import__wsdl_selector *)

type import = {
  content_format : string prop;  (** content_format *)
  content_value : string prop;  (** content_value *)
  wsdl_selector : import__wsdl_selector list;
}
[@@deriving yojson_of]
(** import *)

type license = {
  name : string prop option; [@option]  (** name *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** license *)

type oauth2_authorization = {
  authorization_server_name : string prop;
      (** authorization_server_name *)
  scope : string prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** oauth2_authorization *)

type openid_authentication = {
  bearer_token_sending_methods : string prop list option; [@option]
      (** bearer_token_sending_methods *)
  openid_provider_name : string prop;  (** openid_provider_name *)
}
[@@deriving yojson_of]
(** openid_authentication *)

type subscription_key_parameter_names = {
  header : string prop;  (** header *)
  query : string prop;  (** query *)
}
[@@deriving yojson_of]
(** subscription_key_parameter_names *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  contact : contact list;
  import : import list;
  license : license list;
  oauth2_authorization : oauth2_authorization list;
  openid_authentication : openid_authentication list;
  subscription_key_parameter_names :
    subscription_key_parameter_names list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api *)

let contact ?email ?name ?url () : contact = { email; name; url }

let import__wsdl_selector ~endpoint_name ~service_name () :
    import__wsdl_selector =
  { endpoint_name; service_name }

let import ~content_format ~content_value ~wsdl_selector () : import
    =
  { content_format; content_value; wsdl_selector }

let license ?name ?url () : license = { name; url }

let oauth2_authorization ?scope ~authorization_server_name () :
    oauth2_authorization =
  { authorization_server_name; scope }

let openid_authentication ?bearer_token_sending_methods
    ~openid_provider_name () : openid_authentication =
  { bearer_token_sending_methods; openid_provider_name }

let subscription_key_parameter_names ~header ~query () :
    subscription_key_parameter_names =
  { header; query }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api ?api_type ?description ?display_name
    ?id ?path ?protocols ?revision_description ?service_url
    ?soap_pass_through ?source_api_id ?subscription_required
    ?terms_of_service_url ?version ?version_description
    ?version_set_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision ~contact ~import ~license
    ~oauth2_authorization ~openid_authentication
    ~subscription_key_parameter_names () : azurerm_api_management_api
    =
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

type t = {
  api_management_name : string prop;
  api_type : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_current : bool prop;
  is_online : bool prop;
  name : string prop;
  path : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  revision : string prop;
  revision_description : string prop;
  service_url : string prop;
  soap_pass_through : bool prop;
  source_api_id : string prop;
  subscription_required : bool prop;
  terms_of_service_url : string prop;
  version : string prop;
  version_description : string prop;
  version_set_id : string prop;
}

let register ?tf_module ?api_type ?description ?display_name ?id
    ?path ?protocols ?revision_description ?service_url
    ?soap_pass_through ?source_api_id ?subscription_required
    ?terms_of_service_url ?version ?version_description
    ?version_set_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision ~contact ~import ~license
    ~oauth2_authorization ~openid_authentication
    ~subscription_key_parameter_names __resource_id =
  let __resource_type = "azurerm_api_management_api" in
  let __resource =
    azurerm_api_management_api ?api_type ?description ?display_name
      ?id ?path ?protocols ?revision_description ?service_url
      ?soap_pass_through ?source_api_id ?subscription_required
      ?terms_of_service_url ?version ?version_description
      ?version_set_id ?timeouts ~api_management_name ~name
      ~resource_group_name ~revision ~contact ~import ~license
      ~oauth2_authorization ~openid_authentication
      ~subscription_key_parameter_names ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_type =
         Prop.computed __resource_type __resource_id "api_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       is_current =
         Prop.computed __resource_type __resource_id "is_current";
       is_online =
         Prop.computed __resource_type __resource_id "is_online";
       name = Prop.computed __resource_type __resource_id "name";
       path = Prop.computed __resource_type __resource_id "path";
       protocols =
         Prop.computed __resource_type __resource_id "protocols";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       revision =
         Prop.computed __resource_type __resource_id "revision";
       revision_description =
         Prop.computed __resource_type __resource_id
           "revision_description";
       service_url =
         Prop.computed __resource_type __resource_id "service_url";
       soap_pass_through =
         Prop.computed __resource_type __resource_id
           "soap_pass_through";
       source_api_id =
         Prop.computed __resource_type __resource_id "source_api_id";
       subscription_required =
         Prop.computed __resource_type __resource_id
           "subscription_required";
       terms_of_service_url =
         Prop.computed __resource_type __resource_id
           "terms_of_service_url";
       version =
         Prop.computed __resource_type __resource_id "version";
       version_description =
         Prop.computed __resource_type __resource_id
           "version_description";
       version_set_id =
         Prop.computed __resource_type __resource_id "version_set_id";
     }
      : t)
  in
  __resource_attributes

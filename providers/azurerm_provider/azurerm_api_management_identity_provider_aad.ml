(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_identity_provider_aad__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aad__timeouts *)

type azurerm_api_management_identity_provider_aad = {
  allowed_tenants : string prop list;  (** allowed_tenants *)
  api_management_name : string prop;  (** api_management_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  signin_tenant : string prop option; [@option]  (** signin_tenant *)
  timeouts :
    azurerm_api_management_identity_provider_aad__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aad *)

type t = {
  allowed_tenants : string list prop;
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
  signin_tenant : string prop;
}

let azurerm_api_management_identity_provider_aad ?id ?signin_tenant
    ?timeouts ~allowed_tenants ~api_management_name ~client_id
    ~client_secret ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_aad"
  in
  let __resource =
    ({
       allowed_tenants;
       api_management_name;
       client_id;
       client_secret;
       id;
       resource_group_name;
       signin_tenant;
       timeouts;
     }
      : azurerm_api_management_identity_provider_aad)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_aad
       __resource);
  let __resource_attributes =
    ({
       allowed_tenants =
         Prop.computed __resource_type __resource_id
           "allowed_tenants";
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       signin_tenant =
         Prop.computed __resource_type __resource_id "signin_tenant";
     }
      : t)
  in
  __resource_attributes

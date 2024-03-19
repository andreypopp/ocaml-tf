(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_identity_provider_aadb2c = {
  allowed_tenant : string prop;  (** allowed_tenant *)
  api_management_name : string prop;  (** api_management_name *)
  authority : string prop;  (** authority *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  password_reset_policy : string prop option; [@option]
      (** password_reset_policy *)
  profile_editing_policy : string prop option; [@option]
      (** profile_editing_policy *)
  resource_group_name : string prop;  (** resource_group_name *)
  signin_policy : string prop;  (** signin_policy *)
  signin_tenant : string prop;  (** signin_tenant *)
  signup_policy : string prop;  (** signup_policy *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aadb2c *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_identity_provider_aadb2c ?id
    ?password_reset_policy ?profile_editing_policy ?timeouts
    ~allowed_tenant ~api_management_name ~authority ~client_id
    ~client_secret ~resource_group_name ~signin_policy ~signin_tenant
    ~signup_policy () :
    azurerm_api_management_identity_provider_aadb2c =
  {
    allowed_tenant;
    api_management_name;
    authority;
    client_id;
    client_secret;
    id;
    password_reset_policy;
    profile_editing_policy;
    resource_group_name;
    signin_policy;
    signin_tenant;
    signup_policy;
    timeouts;
  }

type t = {
  allowed_tenant : string prop;
  api_management_name : string prop;
  authority : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  password_reset_policy : string prop;
  profile_editing_policy : string prop;
  resource_group_name : string prop;
  signin_policy : string prop;
  signin_tenant : string prop;
  signup_policy : string prop;
}

let register ?tf_module ?id ?password_reset_policy
    ?profile_editing_policy ?timeouts ~allowed_tenant
    ~api_management_name ~authority ~client_id ~client_secret
    ~resource_group_name ~signin_policy ~signin_tenant ~signup_policy
    __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_aadb2c"
  in
  let __resource =
    azurerm_api_management_identity_provider_aadb2c ?id
      ?password_reset_policy ?profile_editing_policy ?timeouts
      ~allowed_tenant ~api_management_name ~authority ~client_id
      ~client_secret ~resource_group_name ~signin_policy
      ~signin_tenant ~signup_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_aadb2c
       __resource);
  let __resource_attributes =
    ({
       allowed_tenant =
         Prop.computed __resource_type __resource_id "allowed_tenant";
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       authority =
         Prop.computed __resource_type __resource_id "authority";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       id = Prop.computed __resource_type __resource_id "id";
       password_reset_policy =
         Prop.computed __resource_type __resource_id
           "password_reset_policy";
       profile_editing_policy =
         Prop.computed __resource_type __resource_id
           "profile_editing_policy";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       signin_policy =
         Prop.computed __resource_type __resource_id "signin_policy";
       signin_tenant =
         Prop.computed __resource_type __resource_id "signin_tenant";
       signup_policy =
         Prop.computed __resource_type __resource_id "signup_policy";
     }
      : t)
  in
  __resource_attributes
